
execute if score @s failed matches 1.. run function amongus:tasks/power0/sec/end

execute if score @s sec.power.0a matches 0 run function amongus:tasks/power0/sec/a0
execute if score @s sec.power.0a matches 2 run function amongus:tasks/power0/sec/a2
execute if score @s sec.power.0a matches 4 run function amongus:tasks/power0/sec/off
execute if score @s sec.power.0a matches 6 run function amongus:tasks/power0/sec/a6
execute if score @s sec.power.0a matches 8 run function amongus:tasks/power0/sec/on

execute if score @s sec.power.0a matches 9 if score tick data matches 10 run function amongus:tasks/power0/sec/end
