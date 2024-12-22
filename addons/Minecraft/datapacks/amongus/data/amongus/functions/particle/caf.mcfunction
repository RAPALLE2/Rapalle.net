
execute if entity @s[scores={caf.garbage.0=0}] as @e[type=minecraft:villager,limit=1,tag=caf.garbage] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={caf.garbage.0=0}]
execute if entity @s[scores={caf.upload.0=0}] as @e[type=minecraft:villager,limit=1,tag=caf.download] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={caf.upload.0=0}]
execute if entity @s[scores={caf.wiring=0}] as @e[type=minecraft:villager,limit=1,tag=caf.wiring] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={caf.wiring=0}]
