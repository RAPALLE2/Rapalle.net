
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s ani.timer matches 1.. run scoreboard players set @s elec.calibrate 1

execute if score @s ani.timer matches 1.. at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0

scoreboard players reset @s ani.timer
scoreboard players reset @s cali.btn

scoreboard players reset @s rnA
scoreboard players reset @s rnB
scoreboard players reset @s rnC
scoreboard players reset @s rnD
scoreboard players reset @s rnE
scoreboard players reset @s rnF
scoreboard players reset @s rnG
scoreboard players reset @s rnH
scoreboard players reset @s rnI

tag @s remove busy
