
scoreboard players add @s ani.timer 1

execute if score @s ani.timer matches 5 run function amongus:tasks/align/canvas0

execute if score @s ani.timer matches 8 run function amongus:tasks/align/canvas1

execute if score @s ani.timer matches 11 run function amongus:tasks/align/canvas0

execute if score @s ani.timer matches 14 run function amongus:tasks/align/canvas1

execute if score @s ani.timer matches 17 run function amongus:tasks/align/canvas0

execute if score @s ani.timer matches 20 run function amongus:tasks/align/canvas1

execute if score @s ani.timer matches 23 run function amongus:tasks/align/canvas0

execute if score @s ani.timer matches 25 if entity @s[tag=align.up] run function amongus:tasks/align/up/end
execute if score @s ani.timer matches 25 if entity @s[tag=align.low] run function amongus:tasks/align/low/end
