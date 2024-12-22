
scoreboard players add @s ani.timer 1

execute if score @s ani.timer matches 5 run function amongus:tasks/reactor/animation/a1
execute if score @s ani.timer matches 5 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 10 run function amongus:tasks/reactor/animation/black
execute if score @s ani.timer matches 10 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 15 run function amongus:tasks/reactor/buttons/b1
execute if score @s ani.timer matches 15 run function amongus:tasks/reactor/canvas

execute if score @s ani.timer matches 15 run scoreboard players set @s reactor.prog 11
execute if score @s ani.timer matches 15 run scoreboard players set @s ani.timer -1
