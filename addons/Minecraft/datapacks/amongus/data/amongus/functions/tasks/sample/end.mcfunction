
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s inspect matches 1 run scoreboard players set @s med.sample 1
execute if score @s inspect matches 1 run scoreboard players reset @s start.sample
execute if score @s inspect matches 1 run scoreboard players reset @s timer.sample
execute if score @s inspect matches 1 at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

tag @s remove busy
tag @s remove inspectSample

execute if score @s inspect matches 2.. run scoreboard players reset @s start.sample
execute if score @s inspect matches 2.. run function amongus:tasks/sample/init

execute if score @s timer.sample matches -1 run scoreboard players set @s timer.sample 0

scoreboard players reset @s inspect
