

execute if entity @s[tag=ghost] run function amongus:inventory/notventing/player/ghost/main
execute unless entity @s[tag=ghost] run function amongus:inventory/notventing/player/alive/main
