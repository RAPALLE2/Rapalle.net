
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score right o2.alarm.prog matches 6 at @s run function amongus:tasks/completed
execute if score right o2.alarm.prog matches 6 run scoreboard players set playerA sabotage 1
execute if score right o2.alarm.prog matches 6 run kill @e[type=minecraft:villager,limit=1,tag=o2.sab.a]

scoreboard players reset right o2.alarm.prog
scoreboard players reset @s o2.alarm.prog

scoreboard players reset @s o2.values.a
scoreboard players reset @s o2.values.b
scoreboard players reset @s o2.values.c
scoreboard players reset @s o2.values.d
scoreboard players reset @s o2.values.e
scoreboard players reset @s o2.values.f

scoreboard players reset @s o2.input.a
scoreboard players reset @s o2.input.b
scoreboard players reset @s o2.input.c
scoreboard players reset @s o2.input.d
scoreboard players reset @s o2.input.e
scoreboard players reset @s o2.input.f

scoreboard players reset @s o2.btn.put
scoreboard players reset @s o2.btn.del
scoreboard players reset @s o2.btn.ent

scoreboard players set @s check 0

scoreboard players set @s failed 0

tag @s remove busy
tag @s remove o2.playerA
