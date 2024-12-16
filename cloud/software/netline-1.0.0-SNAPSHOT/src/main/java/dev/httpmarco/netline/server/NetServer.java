package dev.httpmarco.netline.server;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.channel.NetChannelInitializer;
import dev.httpmarco.netline.channel.NetClientChannel;
import dev.httpmarco.netline.impl.AbstractNetCompImpl;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.packet.common.ChannelIdentifyPacket;
import dev.httpmarco.netline.request.ResponderRegisterPacket;
import dev.httpmarco.netline.security.SecurityHandler;
import dev.httpmarco.netline.tracking.server.ClientConnectedTracking;
import dev.httpmarco.netline.utils.NetworkUtils;
import io.netty5.bootstrap.ServerBootstrap;
import io.netty5.channel.Channel;
import io.netty5.channel.ChannelOption;
import io.netty5.channel.EventLoopGroup;
import io.netty5.channel.epoll.Epoll;
import lombok.Getter;
import lombok.experimental.Accessors;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;

@Accessors(fluent = true)
public final class NetServer extends AbstractNetCompImpl<NetServerConfig> {

    private final EventLoopGroup workerGroup = NetworkUtils.createEventLoopGroup(0);
    @Getter
    @NotNull
    private final List<NetClientChannel> clients = new CopyOnWriteArrayList<>();
    @Getter
    @NotNull
    private NetServerState state = NetServerState.INITIALIZE;
    @Getter
    @Nullable
    private SecurityHandler securityHandler;

    public NetServer() {
        super(1, new NetServerConfig());
    }

    @Override
    public CompletableFuture<Void> boot() {
        this.state = NetServerState.BOOTING;
        var future = new CompletableFuture<Void>();

        var bootstrap = new ServerBootstrap()
                .group(bossGroup(), workerGroup)
                .childHandler(new NetChannelInitializer(new NetServerHandler(this)))
                .channelFactory(NetworkUtils.generateChannelFactory())
                .childOption(ChannelOption.TCP_NODELAY, true)
                .childOption(ChannelOption.IP_TOS, 24)
                .childOption(ChannelOption.SO_KEEPALIVE, true);


        if (config().tryTcpFastOpen() && Epoll.isTcpFastOpenServerSideAvailable()) {
            bootstrap.childOption(ChannelOption.TCP_FASTOPEN_CONNECT, true);
        }

        bootstrap.bind(config().hostname(), config().port()).addListener(it -> {
            if(it.isSuccess()) {
                this.state = NetServerState.BOOTED;
                future.complete(null);
                return;
            }
            this.state = NetServerState.FAILED;
            future.completeExceptionally(it.cause());
        });

        responderOf("channel_identification", (channel, properties) -> {
            this.clients.add((NetClientChannel) channel);
            callTracking(channel, new ClientConnectedTracking(channel));
            return new ChannelIdentifyPacket(channel.id());
        });

        track(ResponderRegisterPacket.class, (channel, packet) -> responders().put(packet.id(), (channel1, stringStringMap) -> channel.request(packet.id(), Packet.class).sync()));
        return future;
    }

    @Override
    public @NotNull CompletableFuture<Void> close() {
        var future = new CompletableFuture<Void>();

        this.bossGroup().shutdownGracefully().addListener(it -> CompletableFuture.allOf(this.clients.stream().map(NetChannel::close).toArray(CompletableFuture[]::new)).whenComplete((unused, throwable) -> {
            this.clients.clear();
            this.state = NetServerState.CLOSED;
            future.complete(null);
        }));
        return future;
    }

    @Override
    public NetChannel findChannel(Channel channel) {
        return this.clients.stream().filter(it -> it.equals(channel)).findFirst().orElse(null);
    }

    @Contract("_, _ -> new")
    @Override
    public @NotNull NetChannel generateChannel(Channel channel, @Nullable String id) {
        return new NetClientChannel(this, id, channel);
    }

    public void broadcast(Packet packet) {
        this.clients.stream().filter(NetClientChannel::ready).forEach(channel -> channel.send(packet));
    }

    public void send(String id, Packet packet) {
        this.clients.stream().filter(it -> it.id().equals(id)).findFirst().ifPresent(channel -> channel.send(packet));
    }

    public void send(Predicate<NetClientChannel> predicate, Packet packet) {
        this.clients.stream().filter(predicate).forEach(channel -> channel.send(packet));
    }

    public void withSecurityPolicy(SecurityHandler securityHandler) {
        this.securityHandler = securityHandler;
    }

    public boolean hasSecurityPolicy() {
        return this.securityHandler != null;
    }
}
