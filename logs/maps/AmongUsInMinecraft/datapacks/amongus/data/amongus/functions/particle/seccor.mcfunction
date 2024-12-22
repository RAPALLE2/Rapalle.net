
execute if entity @s[scores={sec.wiring=0}] as @e[type=minecraft:villager,limit=1,tag=sec.wiring] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={sec.wiring=0}]
