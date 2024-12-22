
execute if score @s nav.power.0 matches 0 run scoreboard players set owe dtp10 0

execute if score @s nav.power.0 matches 0 run team modify powerP10 suffix {"text":"r to Navigation (0/2)"}

execute if score @s nav.power.1 matches 0 run team modify powerP10 color gold

execute if score @s nav.power.1 matches 0 run team modify powerP10 prefix {"text":"Navigation: Accept Diverted P"}
execute if score @s nav.power.1 matches 0 run team modify powerP10 suffix {"text":"r (1/2)"}

execute if score @s nav.power matches 1 run team modify powerP10 suffix {"text":"r (2/2)"}
execute if score @s nav.power matches 1 run team modify powerP10 color green
