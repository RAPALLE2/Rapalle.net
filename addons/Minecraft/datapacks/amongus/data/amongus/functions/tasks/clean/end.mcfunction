
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s leafs.cleaned matches 11 run scoreboard players set @s o2.clean 1

execute if score @s leafs.cleaned matches 11 at @s run function amongus:tasks/completed

scoreboard players set @s check 0

scoreboard players set @s failed 0


tag @s remove busy

scoreboard players reset @s leafA
scoreboard players reset @s leafB
scoreboard players reset @s leafC
scoreboard players reset @s leafD
scoreboard players reset @s leafE
scoreboard players reset @s leafF
scoreboard players reset @s leafG
scoreboard players reset @s leafH
scoreboard players reset @s leafI
scoreboard players reset @s leafJ
scoreboard players reset @s leafK
scoreboard players reset @s leafL
scoreboard players reset @s leafM
scoreboard players reset @s leafN
scoreboard players reset @s leafO

scoreboard players reset @s leafs.cleaned
