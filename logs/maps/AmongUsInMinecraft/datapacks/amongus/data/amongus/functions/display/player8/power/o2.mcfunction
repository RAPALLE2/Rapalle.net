
execute if score @s o2.power.0 matches 0 run scoreboard players set Pow dtp8 0

execute if score @s o2.power.0 matches 0 run team modify powerP8 suffix {"text":"er to O2 (0/2)"}

execute if score @s o2.power.1 matches 0 run team modify powerP8 color gold

execute if score @s o2.power.1 matches 0 run team modify powerP8 prefix {"text":"O2: Accept Diverted "}
execute if score @s o2.power.1 matches 0 run team modify powerP8 suffix {"text":"er (1/2)"}

execute if score @s o2.power matches 1 run team modify powerP8 suffix {"text":"er (2/2)"}
execute if score @s o2.power matches 1 run team modify powerP8 color green
