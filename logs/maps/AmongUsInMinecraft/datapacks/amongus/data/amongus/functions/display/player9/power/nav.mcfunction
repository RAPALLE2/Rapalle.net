
execute if score @s nav.power.0 matches 0 run scoreboard players set ower dtp9 0

execute if score @s nav.power.0 matches 0 run team modify powerP9 suffix {"text":" to Navigation (0/2)"}

execute if score @s nav.power.1 matches 0 run team modify powerP9 color gold

execute if score @s nav.power.1 matches 0 run team modify powerP9 prefix {"text":"Navigation: Accept Diverted P"}
execute if score @s nav.power.1 matches 0 run team modify powerP9 suffix {"text":" (1/2)"}

execute if score @s nav.power matches 1 run team modify powerP9 suffix {"text":" (2/2)"}
execute if score @s nav.power matches 1 run team modify powerP9 color green
