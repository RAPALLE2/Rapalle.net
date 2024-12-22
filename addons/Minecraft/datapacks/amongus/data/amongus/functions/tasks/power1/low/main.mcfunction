
execute if score @s failed matches 1.. run function amongus:tasks/power1/low/end


execute if score @s low.power.1a matches 1 run function amongus:tasks/power1/low/half

execute if score @s low.power.1a matches 2 if score tick data matches 10 run function amongus:tasks/power1/low/on

execute if score @s low.power.1a matches 3 if score tick data matches 20 run function amongus:tasks/power1/low/end
