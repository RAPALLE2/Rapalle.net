package dev.httpmarco.netline.request;

import dev.httpmarco.netline.packet.Packet;
import lombok.experimental.UtilityClass;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;

@UtilityClass
public class RequestRegister {

    private final Map<UUID, CompletableFuture<Packet>> requests = new HashMap<>();

    @SuppressWarnings("unchecked")
    public void register(UUID id, CompletableFuture<? extends Packet> future) {
        requests.put(id, (CompletableFuture<Packet>) future);
    }

    public boolean contains(UUID id) {
        return requests.containsKey(id);
    }

    public void apply(UUID id, Packet packet) {
        var future = requests.get(id);
        if (future != null) {
            future.complete(packet);
            requests.remove(id);
        }
    }
}
