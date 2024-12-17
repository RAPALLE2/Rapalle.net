package de.rapallenet.chattar.listeners;

import org.bukkit.GameMode;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.block.BlockBreakEvent;
import org.bukkit.event.block.BlockPlaceEvent;

public class BlockListeners implements Listener {

    @EventHandler(ignoreCancelled = true)
    public void onBlockBreak(BlockBreakEvent event) {
        Player Player = event.getPlayer();
        if (Player.getGameMode() != GameMode.CREATIVE && !Player.isOp()) {
            event.setCancelled(true);
        }
    }

    @EventHandler(ignoreCancelled = true)
    public void onBlockPlace(BlockPlaceEvent event) {
        Player Player = event.getPlayer();
        if (Player.getGameMode() != GameMode.CREATIVE && !Player.isOp()) {
            event.setCancelled(true);
        }
    }


}
