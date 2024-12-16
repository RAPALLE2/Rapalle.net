package dev.httpmarco.netline.server;

import dev.httpmarco.netline.config.CompConfig;
import lombok.Getter;
import lombok.experimental.Accessors;

import java.util.ArrayList;
import java.util.List;

@Getter
@Accessors(fluent = true)
public final class NetServerConfig extends CompConfig {

    private final List<String> blacklist = new ArrayList<>();
    private final List<String> whitelist = new ArrayList<>();

    public NetServerConfig() {
        super("0.0.0.0", 9091, true, 5);
    }
}
