
execute if score @s failed matches 1.. run function amongus:tasks/power1/weap/end


execute if score @s weap.power.1a matches 1 run function amongus:tasks/power1/weap/half

execute if score @s weap.power.1a matches 2 if score tick data matches 10 run function amongus:tasks/power1/weap/on

execute if score @s weap.power.1a matches 3 if score tick data matches 20 run function amongus:tasks/power1/weap/end
