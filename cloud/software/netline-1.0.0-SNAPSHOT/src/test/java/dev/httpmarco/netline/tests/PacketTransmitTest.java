package dev.httpmarco.netline.tests;

import dev.httpmarco.netline.Net;
import dev.httpmarco.netline.client.NetClient;
import dev.httpmarco.netline.content.TestSimplePacket;
import dev.httpmarco.netline.server.NetServer;
import org.awaitility.Awaitility;
import org.junit.jupiter.api.*;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("2 - Packet Transmit test")
public class PacketTransmitTest {

    private static NetServer server;
    private static NetClient client;

    @BeforeAll
    public static void createTestSetup() {
        server = Net.line().server();

        client = Net.line().client();
        client.config(netClientConfig -> netClientConfig.id("test-client"));

        server.bootSync();
        client.bootSync();
    }

    @Test
    @Order(1)
    @DisplayName("2.1 Test tracking registration")
    public void testClientTracking() {
        server.track(TestSimplePacket.class, (channel, packet) -> {});
        assert server.hasTrackOn(TestSimplePacket.class);
    }

    @Test
    @Order(2)
    @DisplayName("2.2 Send a simple packet from client <-> server")
    public void testClientPacketTransmit() {
        var result = new AtomicBoolean(false);

        server.track(TestSimplePacket.class, packet -> result.set(packet.completed()));
        client.send(new TestSimplePacket(true));

        Awaitility.await().atMost(5, TimeUnit.SECONDS).untilTrue(result);
        assert result.get();
    }

    @Test
    @Order(3)
    @DisplayName("2.3 Broadcast a simple packet from server to all clients")
    public void testServerBroadcastPacketTransmit() {
        var result = new AtomicBoolean(false);

        client.track(TestSimplePacket.class, packet -> result.set(packet.completed()));
        server.broadcast(new TestSimplePacket(true));

        Awaitility.await().atMost(5, TimeUnit.SECONDS).untilTrue(result);
        assert result.get();
    }

    @Test
    @Order(4)
    @DisplayName("2.4 Server send a packet to a uniqueId client (name detection)")
    public void testRedirectChannelTest() {
        var result = new AtomicBoolean(false);

        client.track(TestSimplePacket.class, packet -> result.set(packet.completed()));
        server.send("test-client", new TestSimplePacket(true));

        Awaitility.await().atMost(5, TimeUnit.SECONDS).untilTrue(result);
        assert result.get();
    }

    @Test
    @Order(5)
    @DisplayName("2.5 Server send a packet to a uniqueId client (Predicate detection)")
    public void testPredicateRedirectChannelTest() {
        var result = new AtomicBoolean(false);

        client.track(TestSimplePacket.class, packet -> result.set(packet.completed()));
        server.send(channel -> channel.id().equals("test-client") && channel.ready(), new TestSimplePacket(true));

        Awaitility.await().atMost(5, TimeUnit.SECONDS).untilTrue(result);
        assert result.get();
    }

    @AfterAll
    public static void closeAll() {
        client.closeSync();
        server.closeSync();
    }
}