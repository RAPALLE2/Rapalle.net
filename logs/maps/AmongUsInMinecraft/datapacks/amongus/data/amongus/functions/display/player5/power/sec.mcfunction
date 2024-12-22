
execute if score @s sec.power.0 matches 0 run scoreboard players set ivert dtp5 0

execute if score @s sec.power.0 matches 0 run team modify powerP5 suffix {"text":" Power to Security (0/2)"}

execute if score @s sec.power.1 matches 0 run team modify powerP5 color gold

execute if score @s sec.power.1 matches 0 run team modify powerP5 prefix {"text":"Security: Accept D"}
execute if score @s sec.power.1 matches 0 run team modify powerP5 suffix {"text":"ed Power (1/2)"}

execute if score @s sec.power matches 1 run team modify powerP5 suffix {"text":"ed Power (2/2)"}
execute if score @s sec.power matches 1 run team modify powerP5 color green
