
execute if score @s nav.power.0 matches 0 run scoreboard players set Dive dtp3 0

execute if score @s nav.power.0 matches 0 run team modify powerP3 suffix {"text":"rt Power to Navigation (0/2)"}

execute if score @s nav.power.1 matches 0 run team modify powerP3 color gold

execute if score @s nav.power.1 matches 0 run team modify powerP3 prefix {"text":"Navigation: Accept "}
execute if score @s nav.power.1 matches 0 run team modify powerP3 suffix {"text":"rted Power (1/2)"}

execute if score @s nav.power matches 1 run team modify powerP3 suffix {"text":"rted Power (2/2)"}
execute if score @s nav.power matches 1 run team modify powerP3 color green
