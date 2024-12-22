
execute if score @s o2.power.0 matches 0 run scoreboard players set Dive dtp3 0

execute if score @s o2.power.0 matches 0 run team modify powerP3 suffix {"text":"rt Power to O2 (0/2)"}

execute if score @s o2.power.1 matches 0 run team modify powerP3 color gold

execute if score @s o2.power.1 matches 0 run team modify powerP3 prefix {"text":"O2: Accept "}
execute if score @s o2.power.1 matches 0 run team modify powerP3 suffix {"text":"rted Power (1/2)"}

execute if score @s o2.power matches 1 run team modify powerP3 suffix {"text":"rted Power (2/2)"}
execute if score @s o2.power matches 1 run team modify powerP3 color green
