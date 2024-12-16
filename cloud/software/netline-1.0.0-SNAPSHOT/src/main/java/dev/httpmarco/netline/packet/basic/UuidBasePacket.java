package dev.httpmarco.netline.packet.basic;

import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.packet.PacketBuffer;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;
import org.jetbrains.annotations.NotNull;

import java.util.UUID;

@Getter
@Accessors(fluent = true)
@AllArgsConstructor
public abstract class UuidBasePacket extends Packet {

     private UUID uuid;

    @Override
    public void read(@NotNull PacketBuffer buffer) {
        this.uuid = buffer.readUniqueId();
    }

    @Override
    public void write(@NotNull PacketBuffer buffer) {
        buffer.writeUniqueId(this.uuid);
    }
}
