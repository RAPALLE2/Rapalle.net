
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s ani.timer matches 1.. run scoreboard players set @s up.align.1 1
execute if score @s ani.timer matches 1.. run scoreboard players set @s up.align 1

execute if score @s ani.timer matches 1.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s ani.timer
scoreboard players reset @s btn.align
scoreboard players reset @s row.align
scoreboard players reset @s extend.align

tag @s remove busy
tag @s remove align.low
