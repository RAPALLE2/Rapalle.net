
execute if score @s failed matches 1.. run function amongus:tasks/scan/end

execute if score @s scan.timer matches 1..200 if score visual_tasks settings matches 0 run function amongus:tasks/scan/notvisual
execute if score @s scan.timer matches 1..200 if score visual_tasks settings matches 1 run function amongus:tasks/scan/notvisual
execute if score @s scan.timer matches 1..200 as @e[tag=med.scanner] at @s run tp ~ ~0.01 ~
execute if score @s scan.timer matches 1..200 store result bossbar tasks:scan value run scoreboard players get @s scan.timer
execute if score @s scan.timer matches 1..200 run scoreboard players add @s scan.timer 1

execute if score @s scan.timer matches 201 run function amongus:tasks/scan/end
