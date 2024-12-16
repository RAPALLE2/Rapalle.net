package dev.httpmarco.netline.impl;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.NetComp;
import dev.httpmarco.netline.config.CompConfig;
import dev.httpmarco.netline.config.Config;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.request.*;
import dev.httpmarco.netline.tracking.Tracking;
import dev.httpmarco.netline.utils.NetworkUtils;
import io.netty5.channel.Channel;
import io.netty5.channel.EventLoopGroup;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.SneakyThrows;
import lombok.experimental.Accessors;
import lombok.extern.log4j.Log4j2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

@Log4j2
@Accessors(fluent = true)
public abstract class AbstractNetCompImpl<C extends CompConfig> implements NetComp<C> {

    private final Map<Class<? extends Tracking>, List<BiConsumer<NetChannel, ? extends Tracking>>> trackers = new HashMap<>();
    @Getter
    private final Map<String, BiFunction<NetChannel, Map<String, String>, Packet>> responders = new HashMap<>();
    @Getter
    private final C config;
    private final int bossGroupThreads;
    @Getter(AccessLevel.PROTECTED)
    private EventLoopGroup bossGroup;

    public AbstractNetCompImpl(int bossGroupThreads, C config) {
        this.bossGroupThreads = bossGroupThreads;
        this.config = config;
        this.reinitializeEventLoopGroup();

        track(RequestPacket.class, (channel, request) -> {
            if (!responders.containsKey(request.value())) {
                channel.send(new BadRequestPacket(request.requestId()));
                log.warn("No responder found for request {}", request.value());
                return;
            }
            // calculate the new response of the request with the channel and the properties
            var packet = new ResponsePacket(request.requestId(), this.responders.get(request.value()).apply(channel, request.properties()));

            // send the same channel the response
            channel.send(packet);
        });

        track(ResponsePacket.class, (channel, response) -> {
            if(!RequestRegister.contains(response.requestId())) {
                log.warn("Request {} not found!", response.requestId());
                return;
            }
            RequestRegister.apply(response.requestId(), response.packet());
        });
    }

    public void reinitializeEventLoopGroup() {
        this.bossGroup = NetworkUtils.createEventLoopGroup(bossGroupThreads);
    }

    public <T extends Tracking> NetComp<C> track(Class<T> tracking, Consumer<T> apply) {
        return this.track(tracking, (channel, tracking1) -> apply.accept(tracking1));
    }

    @Override
    public <T extends Tracking> NetComp<C> track(Class<T> tracking, BiConsumer<NetChannel, T> apply) {
        var currentTrackers = trackers.getOrDefault(tracking, new ArrayList<>());
        currentTrackers.add(apply);
        this.trackers.put(tracking, currentTrackers);
        return this;
    }

    @SuppressWarnings("unchecked")
    public <T extends Tracking> void callTracking(NetChannel channel, @NotNull T tracking) {
        if (trackers.containsKey(tracking.getClass())) {
            trackers.get(tracking.getClass()).forEach(it -> ((BiConsumer<NetChannel, Tracking>) it).accept(channel, tracking));
        }
    }

    @Override
    public void responderOf(String id, BiFunction<NetChannel, Map<String, String>, Packet> responder) {
        this.responders.put(id, responder);
    }

    @Override
    public NetComp<C> config(@NotNull Consumer<C> config) {
        config.accept(this.config);
        return this;
    }

    public boolean hasTrackOn(Class<? extends Tracking> tracking) {
        return this.trackers.containsKey(tracking);
    }

    public abstract NetChannel findChannel(Channel channel);

    public abstract NetChannel generateChannel(Channel channel, @Nullable String id);

    @Override
    @SneakyThrows
    public void closeSync() {
        this.close().get(config().timeoutDelayInSeconds(), TimeUnit.SECONDS);
    }
}
