package dev.httpmarco.netline;

import dev.httpmarco.netline.config.Config;
import dev.httpmarco.netline.impl.AbstractNetCompImpl;
import dev.httpmarco.netline.packet.Packet;
import dev.httpmarco.netline.request.RequestPacket;
import io.netty5.channel.ChannelHandlerContext;
import io.netty5.channel.SimpleChannelInboundHandler;
import lombok.AllArgsConstructor;
import org.jetbrains.annotations.NotNull;

import java.util.function.Consumer;

@AllArgsConstructor
public abstract class NetCompHandler extends SimpleChannelInboundHandler<Packet> {

    private final AbstractNetCompImpl<? extends Config> netComp;

    @Override
    protected void messageReceived(@NotNull ChannelHandlerContext ctx, Packet packet) {
        // find the specific message channel
        var channel = netComp.findChannel(ctx.channel());

        if(channel == null) {
            // we must identify the channel first
            if(packet instanceof RequestPacket requestPacket && requestPacket.value().equals("channel_identification")) {
                netComp.callTracking(this.netComp.generateChannel(ctx.channel(), requestPacket.properties().get("id")), packet);
            } else {
                ctx.close();
            }
            return;
        }
        netComp.callTracking(netComp.findChannel(ctx.channel()), packet);
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) {
        handshakeChannel(netComp.generateChannel(ctx.channel(), null));
    }

    @Override
    public void channelInactive(@NotNull ChannelHandlerContext ctx) {
        // find the specific message channel
        var channel = netComp.findChannel(ctx.channel());

        if(channel == null) {
            ctx.close();
            return;
        }

        closeChannel(channel);
    }

    public abstract void closeChannel(NetChannel netChannel);

    public abstract void handshakeChannel(NetChannel netChannel);
}
