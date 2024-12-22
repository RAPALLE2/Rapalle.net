
execute if score @s failed matches 1.. run function amongus:tasks/power1/com/end


execute if score @s com.power.1a matches 1 run function amongus:tasks/power1/com/half

execute if score @s com.power.1a matches 2 if score tick data matches 10 run function amongus:tasks/power1/com/on

execute if score @s com.power.1a matches 3 if score tick data matches 20 run function amongus:tasks/power1/com/end
