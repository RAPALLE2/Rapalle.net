package de.rapallenet.chattar.listeners;

import org.bukkit.ChatColor;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerJoinEvent;
import org.bukkit.event.player.PlayerQuitEvent;

public class ConnectionListeners implements Listener {

    @EventHandler
    public void onJoin(PlayerJoinEvent event){
        Player player = event.getPlayer();
        event.setJoinMessage(ChatColor.GOLD+ "[" +ChatColor.GREEN + "+" + ChatColor.GOLD + "] " + ChatColor.YELLOW + player.getName());

    }

    @EventHandler
    public void onQuit(PlayerQuitEvent event){
        Player player = event.getPlayer();
        event.setQuitMessage(ChatColor.GOLD + "[" +ChatColor.RED + "-" + ChatColor.GOLD + "] " + ChatColor.BLACK + player.getName());

    }

}
