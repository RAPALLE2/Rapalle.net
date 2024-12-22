
scoreboard players set right o2.alarm.prog 0

execute if score @s o2.input.a = @s o2.values.a run scoreboard players add right o2.alarm.prog 1
execute if score @s o2.input.b = @s o2.values.b run scoreboard players add right o2.alarm.prog 1
execute if score @s o2.input.c = @s o2.values.c run scoreboard players add right o2.alarm.prog 1
execute if score @s o2.input.d = @s o2.values.d run scoreboard players add right o2.alarm.prog 1
execute if score @s o2.input.e = @s o2.values.e run scoreboard players add right o2.alarm.prog 1
execute if score @s o2.input.f = @s o2.values.f run scoreboard players add right o2.alarm.prog 1

execute unless score right o2.alarm.prog matches 6 run function amongus:tasks/sabotages/o2/init
execute if score right o2.alarm.prog matches 6 run function amongus:tasks/sabotages/o2/end
