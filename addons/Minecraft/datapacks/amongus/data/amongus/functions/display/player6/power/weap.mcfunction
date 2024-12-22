
execute if score @s weap.power.0 matches 0 run scoreboard players set Power dtp6 0

execute if score @s weap.power.0 matches 0 run team modify powerP6 suffix {"text":" to Weapons (0/2)"}

execute if score @s weap.power.1 matches 0 run team modify powerP6 color gold

execute if score @s weap.power.1 matches 0 run team modify powerP6 prefix {"text":"Weapons: Accept Diverted "}
execute if score @s weap.power.1 matches 0 run team modify powerP6 suffix {"text":" (1/2)"}

execute if score @s weap.power matches 1 run team modify powerP6 suffix {"text":" (2/2)"}
execute if score @s weap.power matches 1 run team modify powerP6 color green
