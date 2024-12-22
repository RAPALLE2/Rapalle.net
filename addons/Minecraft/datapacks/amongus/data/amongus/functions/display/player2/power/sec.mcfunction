
execute if score @s sec.power.0 matches 0 run scoreboard players set Diver dtp2 0

execute if score @s sec.power.0 matches 0 run team modify powerP2 suffix {"text":"t Power to Security (0/2)"}

execute if score @s sec.power.1 matches 0 run team modify powerP2 color gold

execute if score @s sec.power.1 matches 0 run team modify powerP2 prefix {"text":"Security: Accept "}
execute if score @s sec.power.1 matches 0 run team modify powerP2 suffix {"text":"ted Power (1/2)"}

execute if score @s sec.power matches 1 run team modify powerP2 suffix {"text":"ted Power (2/2)"}
execute if score @s sec.power matches 1 run team modify powerP2 color green
