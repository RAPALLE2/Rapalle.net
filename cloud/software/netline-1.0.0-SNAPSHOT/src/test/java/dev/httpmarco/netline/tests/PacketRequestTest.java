package dev.httpmarco.netline.tests;

import dev.httpmarco.netline.Net;
import dev.httpmarco.netline.client.NetClient;
import dev.httpmarco.netline.content.TestSimplePacket;
import dev.httpmarco.netline.request.ResponderRegisterPacket;
import dev.httpmarco.netline.server.NetServer;
import org.awaitility.Awaitility;
import org.junit.jupiter.api.*;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("4 - Packet request test")
public class PacketRequestTest {

    private static NetServer server;
    private static NetClient client;

    @BeforeAll
    public static void createTestSetup() {
        server = Net.line().server();
        client = Net.line().client();

        server.bootSync();
        client.bootSync();
    }

    @Test
    @Order(1)
    @DisplayName("4.1 External responder test")
    public void clientToServerRequests() {
        var responderId = "testE";
        var result = new AtomicBoolean(false);

        server.track(ResponderRegisterPacket.class, (channel, packet) -> {
            if(packet.id().equals(responderId)) {
                result.set(true);
            }
        });

        client.responderOf(responderId, (channel, id) -> new TestSimplePacket(true));
        Awaitility.await().atMost(6, TimeUnit.SECONDS).untilTrue(result);

        // channel identification responder and testA responder
        assert server.responders().size() == 2;
        assert server.responders().containsKey(responderId);
    }

    @Test
    @Order(2)
    @DisplayName("4.2 Send a requests to a specific client")
    public void responderServerToClientRequestTest() {
        var responderId = "testA";
        var asyncResult = new AtomicBoolean(false);

        client.responderOf(responderId, (channel, id) -> new TestSimplePacket(true));

        // first test async request
        server.clients().get(0).request(responderId, TestSimplePacket.class).async().whenComplete((testSimplePacket, throwable) -> asyncResult.set(true));

        Awaitility.await().atMost(6, TimeUnit.SECONDS).untilTrue(asyncResult);

        var request = server.clients().get(0).request(responderId, TestSimplePacket.class).sync();
        assert request != null;
        assert request.completed();
        assert asyncResult.get();
    }


    @Test
    @Order(3)
    @DisplayName("4.3 Send a requests to the server")
    public void responderClientToServerRequestTest() {
        var responderId = "testA";
        var result = new AtomicBoolean(false);

        server.responderOf(responderId, (channel, id) -> new TestSimplePacket(true));


        // first test async request
        client.request(responderId, TestSimplePacket.class).async().whenComplete((testSimplePacket, throwable) -> result.set(true));

        Awaitility.await().atMost(6, TimeUnit.SECONDS).untilTrue(result);
        var request = client.request(responderId, TestSimplePacket.class).sync();
        assert request != null;
        assert request.completed();

        assert result.get();
    }

    @AfterAll
    public static void closeAll() {
        client.closeSync();
        server.closeSync();
    }
}