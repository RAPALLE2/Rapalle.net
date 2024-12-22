
execute if entity @s[scores={nav.steering=0}] as @e[type=minecraft:villager,limit=1,tag=nav.steering] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={nav.steering=0}]
execute if entity @s[scores={nav.upload.0=0}] as @e[type=minecraft:villager,limit=1,tag=nav.download] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={nav.upload.0=0}]
execute if entity @s[scores={nav.course=0}] as @e[type=minecraft:villager,limit=1,tag=nav.course] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={nav.course=0}]
execute if entity @s[scores={nav.power.1=0}] as @e[type=minecraft:villager,limit=1,tag=nav.power] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={nav.power.1=0}]
