
execute if score @s o2.power.0 matches 0 run scoreboard players set Diver dtp2 0

execute if score @s o2.power.0 matches 0 run team modify powerP2 suffix {"text":"t Power to O2 (0/2)"}

execute if score @s o2.power.1 matches 0 run team modify powerP2 color gold

execute if score @s o2.power.1 matches 0 run team modify powerP2 prefix {"text":"O2: Accept "}
execute if score @s o2.power.1 matches 0 run team modify powerP2 suffix {"text":"ted Power (1/2)"}

execute if score @s o2.power matches 1 run team modify powerP2 suffix {"text":"ted Power (2/2)"}
execute if score @s o2.power matches 1 run team modify powerP2 color green
