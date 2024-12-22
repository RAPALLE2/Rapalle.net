
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s manifoldsJ matches 2.. run scoreboard players set @s reac.manifolds 1

execute if score @s manifoldsJ matches 2.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s manifoldsA
scoreboard players reset @s manifoldsB
scoreboard players reset @s manifoldsC
scoreboard players reset @s manifoldsD
scoreboard players reset @s manifoldsE
scoreboard players reset @s manifoldsF
scoreboard players reset @s manifoldsG
scoreboard players reset @s manifoldsH
scoreboard players reset @s manifoldsI
scoreboard players reset @s manifoldsJ

scoreboard players reset @s failed.manifolds

tag @s remove busy
