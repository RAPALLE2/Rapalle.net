package dev.httpmarco.netline.request;

import dev.httpmarco.netline.packet.PacketBuffer;
import dev.httpmarco.netline.packet.basic.StringBasePacket;
import lombok.Getter;
import lombok.experimental.Accessors;
import org.jetbrains.annotations.NotNull;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Getter
@Accessors(fluent = true)
public final class RequestPacket extends StringBasePacket {

    private UUID requestId;
    private Map<String, String> properties;

    public RequestPacket(UUID requestId, String value, Map<String, String> properties) {
        super(value);
        this.requestId = requestId;
        this.properties = properties;
    }

    @Override
    public void read(@NotNull PacketBuffer buffer) {
        super.read(buffer);

        this.requestId = buffer.readUniqueId();
        this.properties = new HashMap<>();

        var amount = buffer.readInt();
        for (var i = 0; i < amount; i++) {
            var key = buffer.readString();
            var value = buffer.readString();
            properties.put(key, value);
        }
    }

    @Override
    public void write(@NotNull PacketBuffer buffer) {
        super.write(buffer);
        buffer.writeUniqueId(requestId);

        buffer.writeInt(properties.size());
        properties.forEach((key, value) -> {
            buffer.writeString(key);
            buffer.writeString(value);
        });
    }
}
