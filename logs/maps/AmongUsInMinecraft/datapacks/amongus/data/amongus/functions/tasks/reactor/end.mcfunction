
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s reactor.prog matches 60 run scoreboard players set @s reac.start 1

execute if score @s reactor.prog matches 60 at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s btn.reac.a
scoreboard players reset @s btn.reac.b
scoreboard players reset @s btn.reac.c
scoreboard players reset @s btn.reac.d
scoreboard players reset @s btn.reac.e

scoreboard players reset @s reactor.prog
scoreboard players reset @s ani.timer

tag @s remove busy
