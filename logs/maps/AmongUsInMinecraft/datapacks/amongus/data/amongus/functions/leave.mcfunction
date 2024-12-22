
function amongus:reset/tag

tp @s 50 117 32 180 -6

effect clear @s

clear @s

team leave @s

title @s subtitle {"text":""}

title @s title {"text":""}

title @s actionbar {"text":""}

advancement revoke @a everything

gamemode adventure

playsound minecraft:music.nether.basalt_deltas master @s ~ ~ ~ 100

scoreboard players reset @s

scoreboard players set @s left 0

effect give @s minecraft:night_vision 999999 255 true

#tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]
