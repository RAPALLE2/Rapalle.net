package dev.httpmarco.netline.tracking.server;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.tracking.NetChannelTracking;

public final class ClientDisconnectedTracking extends NetChannelTracking {

    public ClientDisconnectedTracking(NetChannel channel) {
        super(channel);
    }
}