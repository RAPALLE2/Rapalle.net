
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s scan.timer matches 200.. run scoreboard players set @s med.scan 1

execute if score @s scan.timer matches 200.. at @s run function amongus:tasks/completed

kill @e[tag=med.scanner]

scoreboard players reset @s scan.timer

scoreboard players set @s check 0

scoreboard players set @s failed 0

tag @s remove busy

tag @s remove scan.used

bossbar remove tasks:scan
