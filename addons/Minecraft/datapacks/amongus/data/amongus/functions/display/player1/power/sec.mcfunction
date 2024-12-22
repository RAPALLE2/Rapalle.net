
execute if score @s sec.power.0 matches 0 run scoreboard players set Divert dtp1 0

execute if score @s sec.power.0 matches 0 run team modify powerP1 suffix {"text":" Power to Security (0/2)"}

execute if score @s sec.power.1 matches 0 run team modify powerP1 color gold

execute if score @s sec.power.1 matches 0 run team modify powerP1 prefix {"text":"Security: Accept "}
execute if score @s sec.power.1 matches 0 run team modify powerP1 suffix {"text":"ed Power (1/2)"}

execute if score @s sec.power matches 1 run team modify powerP1 suffix {"text":"ed Power (2/2)"}
execute if score @s sec.power matches 1 run team modify powerP1 color green
