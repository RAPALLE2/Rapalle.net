package dev.httpmarco.netline.server;

import dev.httpmarco.netline.NetChannel;
import dev.httpmarco.netline.NetCompHandler;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.request.RequestPacket;
import dev.httpmarco.netline.tracking.BlacklistTracking;
import dev.httpmarco.netline.tracking.WhitelistTracking;
import dev.httpmarco.netline.tracking.server.ClientConnectedTracking;
import dev.httpmarco.netline.tracking.server.ClientDisconnectedTracking;
import io.netty5.channel.ChannelHandlerContext;
import lombok.extern.log4j.Log4j2;
import org.jetbrains.annotations.NotNull;

@Log4j2
public final class NetServerHandler extends NetCompHandler {

    private final NetServer netServer;

    public NetServerHandler(NetServer netServer) {
        super(netServer);
        this.netServer = netServer;
    }

    @Override
    public void closeChannel(NetChannel netChannel) {
        this.netServer.callTracking(netChannel, new ClientDisconnectedTracking(netChannel));
        this.netServer.clients().remove(netChannel);
    }

    @Override
    public void handshakeChannel(@NotNull NetChannel netChannel) {
        var hostname = netChannel.hostname();
        var config = netServer.config();

        if ((!config.whitelist().isEmpty() && !config.whitelist().contains(hostname))) {
            netChannel.close();

            netServer.callTracking(netChannel, new WhitelistTracking(netChannel));
            log.info("Channel {} is not in the whitelist!", hostname);
            return;
        }

        if(!config.blacklist().isEmpty() && config.blacklist().contains(hostname) && !config.whitelist().contains(hostname)) {
            netChannel.close();

            netServer.callTracking(netChannel, new BlacklistTracking(netChannel));
            log.info("Channel {} is in the blacklist!", hostname);
            return;
        }
    }

    @Override
    protected void messageReceived(@NotNull ChannelHandlerContext ctx, Packet packet) {
        if((packet instanceof RequestPacket requestPacket && requestPacket.value().equals("channel_identification")) && netServer.hasSecurityPolicy()) {
            NetChannel securityTempChannel = netServer.generateChannel(ctx.channel(), requestPacket.properties().get("id"));
            if(!netServer.securityHandler().authenticate(securityTempChannel)) {
                netServer.securityHandler().detectUnauthorizedAccess(securityTempChannel);
                securityTempChannel.close();
                return;
            }
        }
        super.messageReceived(ctx, packet);
    }
}
