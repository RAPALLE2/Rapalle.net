
execute if entity @s[scores={shld.prime=0}] as @e[type=minecraft:villager,limit=1,tag=shld.prime] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={shld.prime=0}]
execute if entity @s[scores={shld.power.1=0}] as @e[type=minecraft:villager,limit=1,tag=shld.power] at @s anchored eyes run particle minecraft:end_rod ^ ^-0.5 ^-0.5 0.0 0.0 0.0 1.0 0 normal @a[tag=ingame,tag=!impostor,scores={shld.power.1=0}]
