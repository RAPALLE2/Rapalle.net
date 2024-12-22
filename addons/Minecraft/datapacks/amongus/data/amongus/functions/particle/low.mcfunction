
execute if entity @s[scores={up.align.1=0}] as @e[type=minecraft:villager,limit=1,tag=low.align] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={up.align.1=0}]
execute if entity @s[scores={low.fuel.1=0}] as @e[type=minecraft:villager,limit=1,tag=low.refuel] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={low.fuel.1=0}]
execute if entity @s[scores={low.power.1=0}] as @e[type=minecraft:villager,limit=1,tag=low.power] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={low.power.1=0}]
