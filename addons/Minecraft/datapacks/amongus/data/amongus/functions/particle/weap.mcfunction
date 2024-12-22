
execute if entity @s[scores={weap.clear=0}] as @e[type=minecraft:villager,limit=1,tag=weap.clear] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.3 ^0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={weap.clear=0}]
execute if entity @s[scores={weap.power.1=0}] as @e[type=minecraft:villager,limit=1,tag=weap.power] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={weap.power.1=0}]
execute if entity @s[scores={weap.upload.0=0}] as @e[type=minecraft:villager,limit=1,tag=weap.download] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={weap.upload.0=0}]
