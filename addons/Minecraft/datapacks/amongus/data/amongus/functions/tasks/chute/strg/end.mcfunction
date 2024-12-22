
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s ani.chute.1 matches 24.. run scoreboard players set @s o2.chute.1 1
execute if score @s ani.chute.1 matches 24.. run scoreboard players set @s o2.chute 1

execute if score @s ani.chute.1 matches 24.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s lever.chute

scoreboard players reset @s ani.chute.1

tag @s remove busy
