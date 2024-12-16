package dev.httpmarco.netline.server;

public enum NetServerState {

    // if server is present, but not started booting
    INITIALIZE,
    // if server is booting
    BOOTING,
    // if server is booted and ready to accept connections
    BOOTED,
    // if server failed to boot (port already in use, etc)
    FAILED,
    // if server is closed
    CLOSED

}
