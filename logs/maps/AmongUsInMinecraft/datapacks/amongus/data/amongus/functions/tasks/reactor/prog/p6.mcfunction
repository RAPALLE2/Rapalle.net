
scoreboard players add @s ani.timer 1

execute if score @s ani.timer matches 0 run function amongus:tasks/reactor/animation/empty
execute if score @s ani.timer matches 0 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 5 run function amongus:tasks/reactor/animation/green
execute if score @s ani.timer matches 5 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 9 run function amongus:tasks/reactor/animation/empty
execute if score @s ani.timer matches 9 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 13 run function amongus:tasks/reactor/animation/green
execute if score @s ani.timer matches 13 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 17 run function amongus:tasks/reactor/animation/empty
execute if score @s ani.timer matches 17 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 20 run function amongus:tasks/reactor/animation/green
execute if score @s ani.timer matches 20 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 23 run function amongus:tasks/reactor/animation/empty
execute if score @s ani.timer matches 23 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 25 run function amongus:tasks/reactor/end
