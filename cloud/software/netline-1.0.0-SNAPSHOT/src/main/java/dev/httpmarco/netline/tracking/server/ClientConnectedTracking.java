package dev.httpmarco.netline.tracking.server;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.tracking.NetChannelTracking;

public final class ClientConnectedTracking extends NetChannelTracking {

    public ClientConnectedTracking(NetChannel channel) {
        super(channel);
    }
}
