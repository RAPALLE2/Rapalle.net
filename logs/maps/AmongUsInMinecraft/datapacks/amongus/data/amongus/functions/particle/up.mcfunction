
execute if entity @s[scores={up.align.0=0}] as @e[type=minecraft:villager,limit=1,tag=up.align] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={up.align.0=0}]
execute if entity @s[scores={up.fuel.1=0}] as @e[type=minecraft:villager,limit=1,tag=up.refuel] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={up.fuel.1=0}]
execute if entity @s[scores={up.power.1=0}] as @e[type=minecraft:villager,limit=1,tag=up.power] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={up.power.1=0}]
