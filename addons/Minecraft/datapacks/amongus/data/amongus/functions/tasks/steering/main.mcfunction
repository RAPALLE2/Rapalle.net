
execute if score @s failed matches 1.. run function amongus:tasks/steering/end

execute if score @s steering matches 1 run function amongus:tasks/steering/aligned

execute if score @s steering matches 2 if score tick data matches 10 run function amongus:tasks/steering/end
