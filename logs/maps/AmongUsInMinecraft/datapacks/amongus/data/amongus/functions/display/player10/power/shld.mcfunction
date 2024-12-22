
execute if score @s shld.power.0 matches 0 run scoreboard players set owe dtp10 0

execute if score @s shld.power.0 matches 0 run team modify powerP10 suffix {"text":"r to Shields (0/2)"}

execute if score @s shld.power.1 matches 0 run team modify powerP10 color gold

execute if score @s shld.power.1 matches 0 run team modify powerP10 prefix {"text":"Shields: Accept Diverted P"}
execute if score @s shld.power.1 matches 0 run team modify powerP10 suffix {"text":"r (1/2)"}

execute if score @s shld.power matches 1 run team modify powerP10 suffix {"text":"r (2/2)"}
execute if score @s shld.power matches 1 run team modify powerP10 color green
