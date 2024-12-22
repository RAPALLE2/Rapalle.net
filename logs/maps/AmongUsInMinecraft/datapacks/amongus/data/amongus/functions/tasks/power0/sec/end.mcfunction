
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s sec.power.0a matches 9.. run scoreboard players set @s sec.power.0 1
execute if score @s sec.power.0a matches 9.. run scoreboard players set @s sec.power.1 0

execute if score @s sec.power.0a matches 9.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s sec.power.0a

tag @s remove busy
