package dev.httpmarco.netline.packet.common;

import dev.httpmarco.netline.packet.basic.StringBasePacket;

public final class ChannelIdentifyPacket extends StringBasePacket {

    public ChannelIdentifyPacket(String value) {
        super(value);
    }

    public String id() {
        return this.value();
    }
}
