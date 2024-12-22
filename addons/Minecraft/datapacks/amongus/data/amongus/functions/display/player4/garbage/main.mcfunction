
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set Garb dtp4 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP4 prefix {"text":"Storage: Empty "}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP4 suffix {"text":"age (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP4 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP4 suffix {"text":"age (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP4 color green
