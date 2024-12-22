
execute if score @s nav.power.0 matches 0 run scoreboard players set Pow dtp8 0

execute if score @s nav.power.0 matches 0 run team modify powerP8 suffix {"text":"er to Navigation (0/2)"}

execute if score @s nav.power.1 matches 0 run team modify powerP8 color gold

execute if score @s nav.power.1 matches 0 run team modify powerP8 prefix {"text":"Navigation: Accept Diverted "}
execute if score @s nav.power.1 matches 0 run team modify powerP8 suffix {"text":"er (1/2)"}

execute if score @s nav.power matches 1 run team modify powerP8 suffix {"text":"er (2/2)"}
execute if score @s nav.power matches 1 run team modify powerP8 color green
