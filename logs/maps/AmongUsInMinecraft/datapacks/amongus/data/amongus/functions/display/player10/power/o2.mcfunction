
execute if score @s o2.power.0 matches 0 run scoreboard players set owe dtp10 0

execute if score @s o2.power.0 matches 0 run team modify powerP10 suffix {"text":"r to O2 (0/2)"}

execute if score @s o2.power.1 matches 0 run team modify powerP10 color gold

execute if score @s o2.power.1 matches 0 run team modify powerP10 prefix {"text":"O2: Accept Diverted P"}
execute if score @s o2.power.1 matches 0 run team modify powerP10 suffix {"text":"r (1/2)"}

execute if score @s o2.power matches 1 run team modify powerP10 suffix {"text":"r (2/2)"}
execute if score @s o2.power matches 1 run team modify powerP10 color green
