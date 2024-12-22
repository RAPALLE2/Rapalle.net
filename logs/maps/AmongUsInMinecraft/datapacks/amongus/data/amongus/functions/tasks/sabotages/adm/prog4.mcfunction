
execute if score @s o2.btn.put matches 1..9 run scoreboard players operation @s o2.input.d = @s o2.btn.put
execute if score @s o2.btn.put matches 1..9 run scoreboard players add @s o2.alarm.prog 1

execute if score @s o2.btn.put matches 1..9 run function amongus:tasks/sabotages/adm/interface

execute if score @s o2.btn.put matches 10.. run function amongus:tasks/sabotages/adm/reenable
execute if score @s o2.btn.put matches ..-1 run function amongus:tasks/sabotages/adm/reenable
