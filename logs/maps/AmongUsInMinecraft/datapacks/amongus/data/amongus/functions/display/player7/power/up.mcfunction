
execute if score @s up.power.0 matches 0 run scoreboard players set Powe dtp7 0

execute if score @s up.power.0 matches 0 run team modify powerP7 suffix {"text":"r to Upper Engine (0/2)"}

execute if score @s up.power.1 matches 0 run team modify powerP7 color gold

execute if score @s up.power.1 matches 0 run team modify powerP7 prefix {"text":"Upper Engine: Accept Diverted "}
execute if score @s up.power.1 matches 0 run team modify powerP7 suffix {"text":"r (1/2)"}

execute if score @s up.power matches 1 run team modify powerP7 suffix {"text":"r (2/2)"}
execute if score @s up.power matches 1 run team modify powerP7 color green
