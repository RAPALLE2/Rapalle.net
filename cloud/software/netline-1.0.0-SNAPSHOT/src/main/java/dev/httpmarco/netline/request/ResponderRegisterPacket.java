package dev.httpmarco.netline.request;

import dev.httpmarco.netline.packet.basic.StringBasePacket;

public final class ResponderRegisterPacket extends StringBasePacket {

    public ResponderRegisterPacket(String value) {
        super(value);
    }

    public String id() {
        return value();
    }
}
