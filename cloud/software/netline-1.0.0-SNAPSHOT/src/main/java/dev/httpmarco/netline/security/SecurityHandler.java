package dev.httpmarco.netline.security;

import dev.httpmarco.netline.NetChannel;

public interface SecurityHandler {

    void detectUnauthorizedAccess(NetChannel netChannel);

    boolean authenticate(NetChannel netChannel);

}
