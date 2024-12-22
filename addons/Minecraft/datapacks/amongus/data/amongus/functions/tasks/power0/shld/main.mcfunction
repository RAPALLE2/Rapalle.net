
execute if score @s failed matches 1.. run function amongus:tasks/power0/shld/end

execute if score @s shld.power.0a matches 0 run function amongus:tasks/power0/shld/a0
execute if score @s shld.power.0a matches 2 run function amongus:tasks/power0/shld/a2
execute if score @s shld.power.0a matches 4 run function amongus:tasks/power0/shld/off
execute if score @s shld.power.0a matches 6 run function amongus:tasks/power0/shld/a6
execute if score @s shld.power.0a matches 8 run function amongus:tasks/power0/shld/on

execute if score @s shld.power.0a matches 9 if score tick data matches 10 run function amongus:tasks/power0/shld/end
