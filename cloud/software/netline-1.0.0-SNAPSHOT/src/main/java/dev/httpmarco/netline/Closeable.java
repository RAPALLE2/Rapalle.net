package dev.httpmarco.netline;

import java.util.concurrent.CompletableFuture;

public interface Closeable {

    CompletableFuture<Void> close();

    void closeSync();

}
