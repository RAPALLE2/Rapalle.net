package de.rapallenet.chattar.commands;

import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;

public class version implements CommandExecutor {
    @Override
    public boolean onCommand(CommandSender commandSender, Command command, String s, String[] strings) {
        commandSender.sendMessage(ChatColor.BLUE + "Chattar" + ChatColor.GREEN + " runs version " + ChatColor.YELLOW + "1.1-SNAPSHOT");
        commandSender.isOp();
        return false;
    }
}
