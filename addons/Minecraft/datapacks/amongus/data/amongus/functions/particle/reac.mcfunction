
execute if entity @s[scores={reac.manifolds=0}] as @e[type=minecraft:villager,limit=1,tag=reac.manifolds] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={reac.manifolds=0}]
execute if entity @s[scores={reac.start=0}] as @e[type=minecraft:villager,limit=1,tag=reac.start] at @s anchored eyes run particle minecraft:end_rod ^ ^1 ^ 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={reac.start=0}]
