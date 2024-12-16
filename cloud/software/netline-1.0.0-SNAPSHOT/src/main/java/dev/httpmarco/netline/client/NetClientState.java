package dev.httpmarco.netline.client;

public enum NetClientState {

    // if client is present, but not started booting
    INITIALIZE,
    // if client is booting
    CONNECTING,
    // if client is connected and authenticated
    CONNECTED,
    // if client failed to connect (unknown host, connection refused, etc)
    FAILED,
    // if client is closed or server closed the connection
    CLOSED

}
