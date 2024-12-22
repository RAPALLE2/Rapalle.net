
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set Garbag dtp2 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP2 prefix {"text":"Storage: Empty "}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP2 suffix {"text":"e (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP2 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP2 suffix {"text":"e (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP2 color green
