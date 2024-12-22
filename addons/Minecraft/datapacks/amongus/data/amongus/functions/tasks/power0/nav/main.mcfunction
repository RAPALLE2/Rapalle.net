
execute if score @s failed matches 1.. run function amongus:tasks/power0/nav/end

execute if score @s nav.power.0a matches 0 run function amongus:tasks/power0/nav/a0
execute if score @s nav.power.0a matches 2 run function amongus:tasks/power0/nav/a2
execute if score @s nav.power.0a matches 4 run function amongus:tasks/power0/nav/off
execute if score @s nav.power.0a matches 6 run function amongus:tasks/power0/nav/a6
execute if score @s nav.power.0a matches 8 run function amongus:tasks/power0/nav/on

execute if score @s nav.power.0a matches 9 if score tick data matches 10 run function amongus:tasks/power0/nav/end
