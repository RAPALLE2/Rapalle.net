
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set Gar dtp5 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP5 prefix {"text":"Storage: Empty "}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP5 suffix {"text":"bage (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP5 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP5 suffix {"text":"bage (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP5 color green
