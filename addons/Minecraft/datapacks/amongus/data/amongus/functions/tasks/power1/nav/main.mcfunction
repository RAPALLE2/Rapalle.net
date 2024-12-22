
execute if score @s failed matches 1.. run function amongus:tasks/power1/nav/end


execute if score @s nav.power.1a matches 1 run function amongus:tasks/power1/nav/half

execute if score @s nav.power.1a matches 2 if score tick data matches 10 run function amongus:tasks/power1/nav/on

execute if score @s nav.power.1a matches 3 if score tick data matches 20 run function amongus:tasks/power1/nav/end
