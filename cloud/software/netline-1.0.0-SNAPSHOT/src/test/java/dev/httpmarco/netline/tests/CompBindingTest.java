package dev.httpmarco.netline.tests;

import dev.httpmarco.netline.Net;
import dev.httpmarco.netline.client.NetClient;
import dev.httpmarco.netline.client.NetClientState;
import dev.httpmarco.netline.server.NetServer;
import dev.httpmarco.netline.server.NetServerState;
import org.junit.jupiter.api.*;
import java.util.concurrent.ExecutionException;

@Nested
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@DisplayName("1 - Server-Client Binding Test")
public class CompBindingTest {

    private static NetServer netServer;
    private static NetClient netClient;

    @Test
    @Order(1)
    @DisplayName("1.1 Bind server on default port 9090")
    public void bindServer() {
        netServer = Net.line().server();

        // check if the server is in the initial state
        assert netServer.state() == NetServerState.INITIALIZE;

        // start a sync boot process -> result must be a success boot
        netServer.bootSync();

        assert netServer.state() == NetServerState.BOOTED;
    }

    @Test
    @Order(2)
    @DisplayName("1.2 Try to start a duplicated bind port instance, witch must fail")
    public void bindDuplicatedFailServer() {
        var failedServer = Net.line().server();

        Assertions.assertThrowsExactly(ExecutionException.class, failedServer::bootSync);
        assert failedServer.state() == NetServerState.FAILED;
    }

    @Test
    @Order(3)
    @DisplayName("1.3 Bind client with the server")
    public void bindClient() {
        netClient = Net.line().client();

        assert netClient.state() == NetClientState.INITIALIZE;

        netClient.bootSync();

        assert netClient.state() == NetClientState.CONNECTED;
        assert netServer.clients().size() == 1;
    }

    @Test
    @Order(4)
    @DisplayName("1.4 Shutdown client connection and check server channel state")
    public void closeClientConnection() {
        netClient.closeSync();

        assert netClient.state() == NetClientState.CLOSED;
        assert netServer.clients().isEmpty();
    }

    @Test
    @Order(5)
    @DisplayName("1.5 Try for a new reconnect")
    public void reconnectClient() {
        netClient.bootSync();

        assert netClient.state() == NetClientState.CONNECTED;
        assert netServer.clients().size() == 1;
    }

    @Test
    @Order(6)
    @DisplayName("1.6 Close server and check client state")
    public void serverShutdown() throws InterruptedException {
        netServer.closeSync();

        assert netServer.state() == NetServerState.CLOSED;
        assert netServer.clients().isEmpty();

        // we must wait for the client to close the connection
        Thread.sleep(200);

        assert netClient.state() == NetClientState.CLOSED;
    }
}
