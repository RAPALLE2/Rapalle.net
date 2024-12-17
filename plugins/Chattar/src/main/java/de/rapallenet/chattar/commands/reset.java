package de.rapallenet.chattar.commands;

import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;

public class reset implements CommandExecutor {
    @Override
    public boolean onCommand(CommandSender commandSender, Command command, String s, String[] strings) {
        commandSender.sendMessage(ChatColor.BLUE + "Chattar" + ChatColor.GREEN + " Config.yml was successfully reset to the default");
        return false;
    }
}
