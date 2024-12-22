
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set arbage dtp6 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP6 prefix {"text":"Storage: Empty G"}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP6 suffix {"text":" (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP6 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP6 suffix {"text":" (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP6 color green
