package dev.httpmarco.netline.content;

import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.packet.PacketBuffer;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;
import lombok.experimental.Accessors;
import org.jetbrains.annotations.NotNull;

@Getter
@Accessors(fluent = true)
@ToString
@AllArgsConstructor
public final class TestSimplePacket extends Packet {

    private boolean completed;

    @Override
    public void read(@NotNull PacketBuffer buffer) {
        this.completed = buffer.readBoolean();
    }

    @Override
    public void write(@NotNull PacketBuffer buffer) {
        buffer.writeBoolean(completed);
    }
}
