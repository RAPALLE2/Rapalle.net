
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s course.a matches 9.. run scoreboard players set @s nav.course 1
execute if score @s course.b matches 9.. run scoreboard players set @s nav.course 1
execute if score @s course.c matches 9.. run scoreboard players set @s nav.course 1

execute if score @s course.a matches 9.. at @s run function amongus:tasks/completed
execute if score @s course.b matches 9.. at @s run function amongus:tasks/completed
execute if score @s course.c matches 9.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s course.a
scoreboard players reset @s course.b
scoreboard players reset @s course.c

tag @s remove busy
