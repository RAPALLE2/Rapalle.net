
execute if score @s up.power.0 matches 0 run scoreboard players set Div dtp4 0

execute if score @s up.power.0 matches 0 run team modify powerP4 suffix {"text":"ert Power to Upper Engine (0/2)"}

execute if score @s up.power.1 matches 0 run team modify powerP4 color gold

execute if score @s up.power.1 matches 0 run team modify powerP4 prefix {"text":"Upper Engine: Accept "}
execute if score @s up.power.1 matches 0 run team modify powerP4 suffix {"text":"erted Power (1/2)"}

execute if score @s up.power matches 1 run team modify powerP4 suffix {"text":"erted Power (2/2)"}
execute if score @s up.power matches 1 run team modify powerP4 color green
