
execute if score @s failed matches 1.. run function amongus:tasks/power0/low/end

execute if score @s low.power.0a matches 0 run function amongus:tasks/power0/low/a0
execute if score @s low.power.0a matches 2 run function amongus:tasks/power0/low/a2
execute if score @s low.power.0a matches 4 run function amongus:tasks/power0/low/off
execute if score @s low.power.0a matches 6 run function amongus:tasks/power0/low/a6
execute if score @s low.power.0a matches 8 run function amongus:tasks/power0/low/on

execute if score @s low.power.0a matches 9 if score tick data matches 10 run function amongus:tasks/power0/low/end
