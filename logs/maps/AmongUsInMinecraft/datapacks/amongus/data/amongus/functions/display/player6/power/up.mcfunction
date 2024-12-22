
execute if score @s up.power.0 matches 0 run scoreboard players set Power dtp6 0

execute if score @s up.power.0 matches 0 run team modify powerP6 suffix {"text":" to Upper Engine (0/2)"}

execute if score @s up.power.1 matches 0 run team modify powerP6 color gold

execute if score @s up.power.1 matches 0 run team modify powerP6 prefix {"text":"Upper Engine: Accept Diverted "}
execute if score @s up.power.1 matches 0 run team modify powerP6 suffix {"text":" (1/2)"}

execute if score @s up.power matches 1 run team modify powerP6 suffix {"text":" (2/2)"}
execute if score @s up.power matches 1 run team modify powerP6 color green
