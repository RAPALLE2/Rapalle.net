
execute if score @s weap.power.0 matches 0 run scoreboard players set Diver dtp2 0

execute if score @s weap.power.0 matches 0 run team modify powerP2 suffix {"text":"t Power to Weapons (0/2)"}

execute if score @s weap.power.1 matches 0 run team modify powerP2 color gold

execute if score @s weap.power.1 matches 0 run team modify powerP2 prefix {"text":"Weapons: Accept "}
execute if score @s weap.power.1 matches 0 run team modify powerP2 suffix {"text":"ted Power (1/2)"}

execute if score @s weap.power matches 1 run team modify powerP2 suffix {"text":"ted Power (2/2)"}
execute if score @s weap.power matches 1 run team modify powerP2 color green
