
execute if entity @s[scores={caf.garbage.1=0}] as @e[type=minecraft:villager,limit=1,tag=garbage.chute] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={caf.garbage.1=0}]
execute if entity @s[scores={o2.chute.1=0}] as @e[type=minecraft:villager,limit=1,tag=garbage.chute] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={o2.chute.1=0}]
execute if entity @s[scores={up.fuel.0=0}] as @e[type=minecraft:villager,limit=1,tag=fuel] at @s anchored eyes run particle minecraft:end_rod ^ ^1 ^ 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={up.fuel.0=0}]
execute if entity @s[scores={low.fuel.0=0}] as @e[type=minecraft:villager,limit=1,tag=fuel] at @s anchored eyes run particle minecraft:end_rod ^ ^1 ^ 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={low.fuel.0=0}]
execute if entity @s[scores={strg.wiring=0}] as @e[type=minecraft:villager,limit=1,tag=strg.wiring] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={strg.wiring=0}]
