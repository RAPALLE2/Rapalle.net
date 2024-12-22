
execute if score @s caf.garbage.0 matches 0..1 run scoreboard players set Garba dtp3 0

execute if score @s caf.garbage.1 matches 0 run team modify garbageP3 prefix {"text":"Storage: Empty "}
execute if score @s caf.garbage.1 matches 0 run team modify garbageP3 suffix {"text":"ge (1/2)"}

execute if score @s caf.garbage.1 matches 0 run team modify garbageP3 color gold

execute if score @s caf.garbage.1 matches 1 run team modify garbageP3 suffix {"text":"ge (2/2)"}
execute if score @s caf.garbage.1 matches 1 run team modify garbageP3 color green
