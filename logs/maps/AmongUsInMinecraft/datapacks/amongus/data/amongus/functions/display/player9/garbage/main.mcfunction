
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set age dtp9 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP9 prefix {"text":"Storage: Empty Garb"}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP9 suffix {"text":" (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP9 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP9 suffix {"text":" (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP9 color green
