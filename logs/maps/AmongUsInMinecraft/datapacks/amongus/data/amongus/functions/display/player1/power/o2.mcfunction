
execute if score @s o2.power.0 matches 0 run scoreboard players set Divert dtp1 0

execute if score @s o2.power.0 matches 0 run team modify powerP1 suffix {"text":" Power to O2 (0/2)"}

execute if score @s o2.power.1 matches 0 run team modify powerP1 color gold

execute if score @s o2.power.1 matches 0 run team modify powerP1 prefix {"text":"O2: Accept "}
execute if score @s o2.power.1 matches 0 run team modify powerP1 suffix {"text":"ed Power (1/2)"}

execute if score @s o2.power matches 1 run team modify powerP1 suffix {"text":"ed Power (2/2)"}
execute if score @s o2.power matches 1 run team modify powerP1 color green
