package dev.httpmarco.netline.channel;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.NetComp;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.request.Request;
import dev.httpmarco.netline.server.NetServer;
import io.netty5.channel.Channel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.SneakyThrows;
import lombok.experimental.Accessors;
import lombok.extern.log4j.Log4j2;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;

@Log4j2
@Accessors(fluent = true)
@AllArgsConstructor
public class NetClientChannel implements NetChannel {

    private NetServer server;
    @Getter
    private final String id;
    private Channel channel;

    @Override
    public void send(Packet packet) {
        if(channel == null || !this.channel.isActive()) {
            log.warn("Channel is not active, packet {} will not be sent on client with id {}", packet, "TODO");
            return;
        }
        this.channel.writeAndFlush(packet);
    }

    @Override
    public <T extends Packet> Request<T> request(String id, Class<T> packetClazz) {
        return new Request<>(server, this, id, packetClazz);
    }

    @Override
    public String hostname() {
        return channel.remoteAddress().toString().split(":", -1)[0].substring(1);
    }

    @Override
    public CompletableFuture<Void> close() {
        if(channel == null) {
            return CompletableFuture.completedFuture(null);
        }

        var future = new CompletableFuture<Void>();
        this.channel.close().addListener(it -> future.complete(null));
        return future;
    }

    @SneakyThrows
    @Override
    public void closeSync() {
        this.close().get(server.config().timeoutDelayInSeconds(), TimeUnit.SECONDS);
    }

    public boolean equals(Channel channel) {
        return this.channel != null && this.channel.equals(channel);
    }

    public boolean ready() {
        return this.channel != null && this.channel.isActive();
    }
}
