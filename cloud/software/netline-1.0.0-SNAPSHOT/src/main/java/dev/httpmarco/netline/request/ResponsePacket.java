package dev.httpmarco.netline.request;

import dev.httpmarco.netline.codec.PacketAllocator;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.packet.PacketBuffer;
import dev.httpmarco.netline.packet.basic.UuidBasePacket;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.SneakyThrows;
import lombok.experimental.Accessors;
import org.jetbrains.annotations.NotNull;

import java.util.UUID;

@Getter
@Accessors(fluent = true)
public final class ResponsePacket extends UuidBasePacket {

    private Packet packet;

    public ResponsePacket(UUID uuid, Packet packet) {
        super(uuid);
        this.packet = packet;
    }

    @SneakyThrows
    @Override
    public void read(@NotNull PacketBuffer buffer) {
        super.read(buffer);

        var className = buffer.readString();
        this.packet = (Packet) PacketAllocator.allocate(Class.forName(className));
        packet.read(buffer);
    }

    @Override
    public void write(@NotNull PacketBuffer buffer) {
        super.write(buffer);
        buffer.writeString(this.packet.getClass().getName());
        this.packet.write(buffer);
    }

    public UUID requestId() {
        return this.uuid();
    }
}
