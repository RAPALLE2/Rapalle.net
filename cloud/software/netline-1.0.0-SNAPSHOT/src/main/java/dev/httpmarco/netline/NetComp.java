package dev.httpmarco.netline;

import dev.httpmarco.netline.config.CompConfig;
import dev.httpmarco.netline.config.Config;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.tracking.Tracking;
import lombok.SneakyThrows;
import org.jetbrains.annotations.NotNull;

import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public interface NetComp<C extends CompConfig> extends Closeable {

    <T extends Tracking> NetComp<C> track(Class<T> tracking, BiConsumer<NetChannel, T> apply);

    CompletableFuture<Void> boot();

    void responderOf(String id, BiFunction<NetChannel, Map<String, String>, Packet> responder);

    NetComp<C> config(@NotNull Consumer<C> config);

    C config();

    @SneakyThrows
    default void bootSync() {
        this.boot().get(config().timeoutDelayInSeconds(), TimeUnit.SECONDS);
    }
}