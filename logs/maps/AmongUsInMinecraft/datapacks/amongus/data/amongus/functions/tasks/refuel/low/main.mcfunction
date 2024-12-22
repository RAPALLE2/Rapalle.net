
execute if score @s failed matches 1.. run function amongus:tasks/refuel/low/end

execute if score @s low.refuel matches 29 run function amongus:tasks/refuel/low/full
execute if score @s low.refuel matches 28 run function amongus:tasks/refuel/low/a14
execute if score @s low.refuel matches 26 run function amongus:tasks/refuel/low/a13
execute if score @s low.refuel matches 24 run function amongus:tasks/refuel/low/a12
execute if score @s low.refuel matches 22 run function amongus:tasks/refuel/low/a11
execute if score @s low.refuel matches 20 run function amongus:tasks/refuel/low/a10
execute if score @s low.refuel matches 18 run function amongus:tasks/refuel/low/a9
execute if score @s low.refuel matches 16 run function amongus:tasks/refuel/low/a8
execute if score @s low.refuel matches 14 run function amongus:tasks/refuel/low/a7
execute if score @s low.refuel matches 12 run function amongus:tasks/refuel/low/a6
execute if score @s low.refuel matches 10 run function amongus:tasks/refuel/low/a5
execute if score @s low.refuel matches 8 run function amongus:tasks/refuel/low/a4
execute if score @s low.refuel matches 6 run function amongus:tasks/refuel/low/a3
execute if score @s low.refuel matches 4 run function amongus:tasks/refuel/low/a2
execute if score @s low.refuel matches 2 run function amongus:tasks/refuel/low/a1

execute if score @s low.refuel matches 30 if score tick data matches 10 run function amongus:tasks/refuel/low/end
