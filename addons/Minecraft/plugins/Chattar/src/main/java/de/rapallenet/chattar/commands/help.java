package de.rapallenet.chattar.commands;

import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;

public class help implements CommandExecutor {
    @Override
    public boolean onCommand(CommandSender commandSender, Command command, String s, String[] strings) {
        commandSender.sendMessage(ChatColor.BLUE + "Chattar" + ChatColor.GREEN + " Command information:");
        commandSender.sendMessage(ChatColor.BLUE + "Chattarreload" + ChatColor.GREEN + " reloads chattar" + ChatColor.RED + " not setup yet");
        commandSender.sendMessage(ChatColor.BLUE + "Chattarhelp" + ChatColor.GREEN + " Shows this Information");
        commandSender.sendMessage(ChatColor.BLUE + "Chattarver" + ChatColor.GREEN + " Shows the version of Chattar");
        return false;
    }
}
