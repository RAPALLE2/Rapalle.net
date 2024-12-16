package dev.httpmarco.netline.client;

import dev.httpmarco.netline.config.CompConfig;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.util.UUID;

@Getter
@Setter
@Accessors(fluent = true)
public final class NetClientConfig extends CompConfig {

    private String id = UUID.randomUUID().toString();

    public NetClientConfig() {
        super("0.0.0.0", 9091, true, 5);
    }
}
