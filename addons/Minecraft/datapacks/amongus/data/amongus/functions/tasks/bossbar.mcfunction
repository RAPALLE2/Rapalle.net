
### TOTAL TASKS COMPLETED

bossbar set amongus:total_tasks style notched_10

bossbar set amongus:total_tasks players @a[tag=ingame]
bossbar set amongus:total_tasks color green

scoreboard players set total_tasks data 0

execute as @a[tag=crewmate] run function amongus:data/count_max_tasks
execute if score freeplay data matches 1 as @a[tag=impostor] run function amongus:data/count_max_tasks

execute store result bossbar amongus:total_tasks max run scoreboard players get total_tasks data

scoreboard players set tasks_done data 0
execute as @a[tag=crewmate] run function amongus:data/count_tasks
execute if score freeplay data matches 1 as @a[tag=impostor] run function amongus:data/count_tasks

execute store result bossbar amongus:total_tasks value run scoreboard players get tasks_done data
execute if score tasks_done data >= total_tasks data unless score preventWin data matches 1..2 run function amongus:win/schedule/crewwin
