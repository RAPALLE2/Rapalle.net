
execute if entity @s[scores={com.upload.0=0}] as @e[type=minecraft:villager,limit=1,tag=com.upload] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.35 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={com.upload.0=0}]
execute if entity @s[scores={com.power.1=0}] as @e[type=minecraft:villager,limit=1,tag=com.power] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={com.power.1=0}]
