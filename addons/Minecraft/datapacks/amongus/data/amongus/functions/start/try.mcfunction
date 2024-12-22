
execute if score freeplay data matches 1 run function amongus:start/try/freeplay
execute unless score freeplay data matches 1 run function amongus:start/try/normal

execute if score starting data matches 1 run schedule function amongus:build/admin_map 15t
execute if score starting data matches 1 run schedule function amongus:build/meeting 20t
execute if score starting data matches 1 run schedule function amongus:build/vents 25t
execute if score starting data matches 1 run schedule function amongus:build/tasks_villager_a 30t
execute if score starting data matches 1 run schedule function amongus:build/tasks_villager_b 30t
execute if score starting data matches 1 run function amongus:lobby/signs/joinb
execute if score starting data matches 1 if score freeplay data matches 1 run function amongus:lobby/signs/freeplayd
execute if score starting data matches 1 if score freeplay data matches 0 run function amongus:lobby/signs/freeplayc
