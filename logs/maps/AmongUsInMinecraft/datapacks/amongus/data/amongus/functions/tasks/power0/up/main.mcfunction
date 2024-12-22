
execute if score @s failed matches 1.. run function amongus:tasks/power0/up/end

execute if score @s up.power.0a matches 0 run function amongus:tasks/power0/up/a0
execute if score @s up.power.0a matches 2 run function amongus:tasks/power0/up/a2
execute if score @s up.power.0a matches 4 run function amongus:tasks/power0/up/off
execute if score @s up.power.0a matches 6 run function amongus:tasks/power0/up/a6
execute if score @s up.power.0a matches 8 run function amongus:tasks/power0/up/on

execute if score @s up.power.0a matches 9 if score tick data matches 10 run function amongus:tasks/power0/up/end
