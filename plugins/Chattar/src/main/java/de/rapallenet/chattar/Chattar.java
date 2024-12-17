package de.rapallenet.chattar;

import de.rapallenet.chattar.commands.help;
import de.rapallenet.chattar.commands.reload;
import de.rapallenet.chattar.commands.reset;
import de.rapallenet.chattar.commands.version;
import de.rapallenet.chattar.listeners.BlockListeners;
import de.rapallenet.chattar.listeners.ConnectionListeners;
import de.rapallenet.chattar.util.Config;
import org.bukkit.Bukkit;
import org.bukkit.plugin.PluginManager;
import org.bukkit.plugin.java.JavaPlugin;

import java.util.Objects;

public final class Chattar extends JavaPlugin {

    private Config commands;

    @Override
    public void onEnable() {
        // Plugin startup logic
        PluginManager pluginManager = Bukkit.getPluginManager();

        Objects.requireNonNull(getCommand("chattarreload")).setExecutor(new reload());
        Objects.requireNonNull(getCommand("chattarversion")).setExecutor(new version());
        Objects.requireNonNull(getCommand("chattarhelp")).setExecutor(new help());
        Objects.requireNonNull(getCommand("chattarreset")).setExecutor(new reset());

        pluginManager.registerEvents(new ConnectionListeners(), this);

        saveDefaultConfig();
        commands = new Config("commands.yml", getDataFolder());

    }

    @Override
    public void onDisable() {
        // Plugin shutdown logic
    }
}
