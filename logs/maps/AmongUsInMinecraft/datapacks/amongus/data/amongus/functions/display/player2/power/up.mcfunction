
execute if score @s up.power.0 matches 0 run scoreboard players set Diver dtp2 0

execute if score @s up.power.0 matches 0 run team modify powerP2 suffix {"text":"t Power to Upper Engine (0/2)"}

execute if score @s up.power.1 matches 0 run team modify powerP2 color gold

execute if score @s up.power.1 matches 0 run team modify powerP2 prefix {"text":"Upper Engine: Accept "}
execute if score @s up.power.1 matches 0 run team modify powerP2 suffix {"text":"ted Power (1/2)"}

execute if score @s up.power matches 1 run team modify powerP2 suffix {"text":"ted Power (2/2)"}
execute if score @s up.power matches 1 run team modify powerP2 color green
