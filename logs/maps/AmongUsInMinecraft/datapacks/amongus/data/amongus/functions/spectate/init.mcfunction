tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

tag @s add game_spectator
tp @s 53 20 31 2.5 0
gamemode spectator
tellraw @s {"text":"Do not leave the game area!","color":"#FF0000"}
tellraw @s [""]
tellraw @s {"text":"To get back fly upwards!","color":"gold"}
scoreboard players reset @s spectate
scoreboard players set @s spectate 2
