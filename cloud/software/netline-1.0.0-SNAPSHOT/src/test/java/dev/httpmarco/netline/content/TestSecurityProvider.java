package dev.httpmarco.netline.content;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.security.SecurityHandler;

public final class TestSecurityProvider implements SecurityHandler {

    @Override
    public void detectUnauthorizedAccess(NetChannel netChannel) {
        System.err.println("Unauthorized access detected");
    }

    @Override
    public boolean authenticate(NetChannel netChannel) {
        return netChannel.id().equals("testA");
    }
}
