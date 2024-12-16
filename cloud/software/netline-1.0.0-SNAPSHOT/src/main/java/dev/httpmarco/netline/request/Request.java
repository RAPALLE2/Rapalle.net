package dev.httpmarco.netline.request;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.NetComp;
import dev.httpmarco.netline.packet.Packet;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;

@AllArgsConstructor
public final class Request<T extends Packet> {

    private final NetComp<?> comp;
    private final NetChannel channel;
    private final String requestId;
    private final Map<String, String> properties = new HashMap<>();
    private final Class<T> responsePacketClazz;

    public Request<T> withProp(String key, String value) {
        properties.put(key, value);
        return this;
    }

    @SneakyThrows
    public T sync() {
       return this.async().get(this.comp.config().timeoutDelayInSeconds(), TimeUnit.SECONDS);
    }

    @Contract(pure = true)
    public @NotNull CompletableFuture<T> async() {
        var id = UUID.randomUUID();
        var future = new CompletableFuture<T>();
        RequestRegister.register(id, future);
        channel.send(new RequestPacket(id, requestId, properties));
        return future;
    }
}
