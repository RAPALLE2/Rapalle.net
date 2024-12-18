package de.rapallenet.chattar.commands;

import de.rapallenet.chattar.util.Config;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;

public class reload implements CommandExecutor {

    @Override
    public boolean onCommand(CommandSender commandSender, Command command, String s, String[] strings) {
        //new Config().save();
        commandSender.sendMessage(ChatColor.BLUE + "Chattar" + ChatColor.GREEN + " was successfully reloaded");
        return false;
    }
}
