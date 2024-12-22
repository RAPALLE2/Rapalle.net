
scoreboard players add @s ani.timer 1

execute if score @s ani.timer matches 0 run function amongus:tasks/reactor/animation/empty
execute if score @s ani.timer matches 0 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 5 run function amongus:tasks/reactor/animation/a1
execute if score @s ani.timer matches 5 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 10 run function amongus:tasks/reactor/animation/black
execute if score @s ani.timer matches 10 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 15 run function amongus:tasks/reactor/animation/a2
execute if score @s ani.timer matches 15 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 20 run function amongus:tasks/reactor/animation/black
execute if score @s ani.timer matches 20 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 25 run function amongus:tasks/reactor/animation/a3
execute if score @s ani.timer matches 25 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 30 run function amongus:tasks/reactor/animation/black
execute if score @s ani.timer matches 30 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 35 run function amongus:tasks/reactor/buttons/b1
execute if score @s ani.timer matches 35 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 35 run scoreboard players set @s reactor.prog 31
execute if score @s ani.timer matches 35 run scoreboard players set @s ani.timer -1
