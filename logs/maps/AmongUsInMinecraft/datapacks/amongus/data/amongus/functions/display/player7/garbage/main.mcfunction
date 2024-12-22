
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set rbage dtp7 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP7 prefix {"text":"Storage: Empty Ga"}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP7 suffix {"text":" (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP7 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP7 suffix {"text":" (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP7 color green
