
execute if entity @s[scores={med.sample=0}] as @e[type=minecraft:villager,limit=1,tag=med.sample] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={med.sample=0}]

execute if entity @s[scores={med.scan=0}] positioned 73 20 34 run particle minecraft:end_rod ~ ~0.6 ~ 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={med.scan=0}]
