
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set bage dtp8 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP8 prefix {"text":"Storage: Empty Gar"}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP8 suffix {"text":" (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP8 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP8 suffix {"text":" (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP8 color green
