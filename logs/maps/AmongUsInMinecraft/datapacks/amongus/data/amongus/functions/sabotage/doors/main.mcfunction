

execute if entity @a[scores={doorA=1}] run function amongus:sabotage/doors/init/a
execute if entity @a[scores={doorB=1}] run function amongus:sabotage/doors/init/b
execute if entity @a[scores={doorC=1}] run function amongus:sabotage/doors/init/c
execute if entity @a[scores={doorD=1}] run function amongus:sabotage/doors/init/d
execute if entity @a[scores={doorE=1}] run function amongus:sabotage/doors/init/e
execute if entity @a[scores={doorF=1}] run function amongus:sabotage/doors/init/f
execute if entity @a[scores={doorG=1}] run function amongus:sabotage/doors/init/g

execute unless score ongoing sabotage matches 1 run function amongus:sabotage/doors/unless
execute unless score ongoing sabotage matches 1 if score allDoors open matches 1 run scoreboard players set allDoors open 0
execute if score ongoing sabotage matches 1 unless score allDoors open matches 1 run function amongus:sabotage/doors/if
