
execute if score @s low.power.0 matches 0 run scoreboard players set Divert dtp1 0

execute if score @s low.power.0 matches 0 run team modify powerP1 suffix {"text":" Power to Lower Engine (0/2)"}

execute if score @s low.power.1 matches 0 run team modify powerP1 color gold

execute if score @s low.power.1 matches 0 run team modify powerP1 prefix {"text":"Lower Engine: Accept "}
execute if score @s low.power.1 matches 0 run team modify powerP1 suffix {"text":"ed Power (1/2)"}

execute if score @s low.power matches 1 run team modify powerP1 suffix {"text":"ed Power (2/2)"}
execute if score @s low.power matches 1 run team modify powerP1 color green
