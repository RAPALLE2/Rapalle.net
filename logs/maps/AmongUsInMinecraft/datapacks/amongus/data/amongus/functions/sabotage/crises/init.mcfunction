
execute if entity @a[scores={activate_sab=1}] run scoreboard players set current sabotage 1
execute if entity @a[scores={activate_sab=2}] run scoreboard players set current sabotage 2
execute if entity @a[scores={activate_sab=3}] run scoreboard players set current sabotage 3
execute if entity @a[scores={activate_sab=4}] run scoreboard players set current sabotage 4

execute if score current sabotage matches 1.. run scoreboard players reset @a[tag=impostor] activate_sab

execute if score current sabotage matches 1 run function amongus:sabotage/meltdown/init
execute if score current sabotage matches 2 run function amongus:sabotage/depleted/init
execute if score current sabotage matches 3 run function amongus:sabotage/fix/init
execute if score current sabotage matches 4 run function amongus:sabotage/comms/init

execute if score current sabotage matches 1..4 run scoreboard players set ongoing sabotage 1
execute if score ongoing sabotage matches 1 run scoreboard players reset current sabotage
