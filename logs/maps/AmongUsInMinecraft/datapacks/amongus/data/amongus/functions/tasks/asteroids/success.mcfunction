
scoreboard players add @s ani.timer 1

execute if score @s ani.timer matches 5 run function amongus:tasks/asteroids/canvas

execute if score @s ani.timer matches 20 run scoreboard players set @s rock.row 1
execute if score @s ani.timer matches 20 run scoreboard players enable @s destroy.rock
execute if score @s ani.timer matches 20 run scoreboard players reset @s ani.timer

execute if score @s ani.timer matches 35 run function amongus:tasks/asteroids/canvas

execute if score @s ani.timer matches 33 run function amongus:tasks/asteroids/canvas0

execute if score @s ani.timer matches 36 run function amongus:tasks/asteroids/canvas

execute if score @s ani.timer matches 39 run function amongus:tasks/asteroids/canvas0

execute if score @s ani.timer matches 42 run function amongus:tasks/asteroids/canvas

execute if score @s ani.timer matches 45 run function amongus:tasks/asteroids/canvas0

execute if score @s ani.timer matches 48 run function amongus:tasks/asteroids/canvas

execute if score @s ani.timer matches 51 run function amongus:tasks/asteroids/canvas0

execute if score @s ani.timer matches 44 run function amongus:tasks/asteroids/canvas0

execute if score @s ani.timer matches 47 run function amongus:tasks/asteroids/end
