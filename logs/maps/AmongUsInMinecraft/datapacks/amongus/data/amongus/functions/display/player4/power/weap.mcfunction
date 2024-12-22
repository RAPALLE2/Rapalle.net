
execute if score @s weap.power.0 matches 0 run scoreboard players set Div dtp4 0

execute if score @s weap.power.0 matches 0 run team modify powerP4 suffix {"text":"ert Power to Weapons (0/2)"}

execute if score @s weap.power.1 matches 0 run team modify powerP4 color gold

execute if score @s weap.power.1 matches 0 run team modify powerP4 prefix {"text":"Weapons: Accept "}
execute if score @s weap.power.1 matches 0 run team modify powerP4 suffix {"text":"erted Power (1/2)"}

execute if score @s weap.power matches 1 run team modify powerP4 suffix {"text":"erted Power (2/2)"}
execute if score @s weap.power matches 1 run team modify powerP4 color green
