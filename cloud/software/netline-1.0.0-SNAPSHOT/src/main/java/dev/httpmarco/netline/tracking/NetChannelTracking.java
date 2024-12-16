package dev.httpmarco.netline.tracking;

import dev.httpmarco.netline.NetChannel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@Accessors(fluent = true)
@AllArgsConstructor
public abstract class NetChannelTracking implements Tracking{

    private final NetChannel channel;
}
