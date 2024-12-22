
execute if score @s sec.power.0 matches 0 run scoreboard players set Powe dtp7 0

execute if score @s sec.power.0 matches 0 run team modify powerP7 suffix {"text":"r to Security (0/2)"}

execute if score @s sec.power.1 matches 0 run team modify powerP7 color gold

execute if score @s sec.power.1 matches 0 run team modify powerP7 prefix {"text":"Security: Accept Diverted "}
execute if score @s sec.power.1 matches 0 run team modify powerP7 suffix {"text":"r (1/2)"}

execute if score @s sec.power matches 1 run team modify powerP7 suffix {"text":"r (2/2)"}
execute if score @s sec.power matches 1 run team modify powerP7 color green
