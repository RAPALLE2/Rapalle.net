
execute if entity @s[scores={o2.chute.0=0}] as @e[type=minecraft:villager,limit=1,tag=o2.chute] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={o2.chute.0=0}]
execute if entity @s[scores={o2.clean=0}] as @e[type=minecraft:villager,limit=1,tag=o2.clean] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={o2.clean=0}]
