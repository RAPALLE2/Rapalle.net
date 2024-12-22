
execute if score @s weap.power.0 matches 0 run scoreboard players set Divert dtp1 0

execute if score @s weap.power.0 matches 0 run team modify powerP1 suffix {"text":" Power to Weapons (0/2)"}

execute if score @s weap.power.1 matches 0 run team modify powerP1 color gold

execute if score @s weap.power.1 matches 0 run team modify powerP1 prefix {"text":"Weapons: Accept "}
execute if score @s weap.power.1 matches 0 run team modify powerP1 suffix {"text":"ed Power (1/2)"}

execute if score @s weap.power matches 1 run team modify powerP1 suffix {"text":"ed Power (2/2)"}
execute if score @s weap.power matches 1 run team modify powerP1 color green
