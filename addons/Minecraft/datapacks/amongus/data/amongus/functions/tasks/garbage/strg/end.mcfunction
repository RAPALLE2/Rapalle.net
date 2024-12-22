
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s ani.garbage.1 matches 24.. run scoreboard players set @s caf.garbage.1 1
execute if score @s ani.garbage.1 matches 24.. run scoreboard players set @s caf.garbage 1

execute if score @s ani.garbage.1 matches 24.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s lever.garbage

scoreboard players reset @s ani.garbage.1

tag @s remove busy
