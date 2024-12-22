

execute unless entity @s[tag=venting] run function amongus:inventory/notventing/main

execute if entity @s[tag=venting] run function amongus:inventory/venting/main
