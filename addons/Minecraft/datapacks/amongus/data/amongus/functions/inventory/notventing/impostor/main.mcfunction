
function amongus:inventory/notventing/impostor/vent

execute if entity @s[tag=ghost] run function amongus:inventory/notventing/impostor/ghost/main
execute unless entity @s[tag=ghost] run function amongus:inventory/notventing/impostor/alive/main
