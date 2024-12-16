package dev.httpmarco.netline;

import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.request.Request;

public interface NetChannel extends Closeable {

    String id();

    void send(Packet packet);

    <T extends Packet> Request<T> request(String id, Class<T> packetClazz);

    String hostname();

}