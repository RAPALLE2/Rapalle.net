
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s shlds.primed matches 3 run scoreboard players set @s shld.prime 1

execute if score @s shlds.primed matches 3 at @s run function amongus:tasks/completed

scoreboard players reset @s shlds.primed

scoreboard players reset @s shldA
scoreboard players reset @s shldB
scoreboard players reset @s shldC
scoreboard players reset @s shldD
scoreboard players reset @s shldE
scoreboard players reset @s shldF
scoreboard players reset @s shldG

scoreboard players set @s check 0

scoreboard players set @s failed 0

tag @s remove busy
