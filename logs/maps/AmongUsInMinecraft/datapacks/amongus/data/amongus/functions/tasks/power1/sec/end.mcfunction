
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s sec.power.1a matches 1.. run scoreboard players set @s sec.power.1 1
execute if score @s sec.power.1a matches 1.. run scoreboard players set @s sec.power 1

execute if score @s sec.power.1a matches 1.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s sec.power.1a

tag @s remove busy