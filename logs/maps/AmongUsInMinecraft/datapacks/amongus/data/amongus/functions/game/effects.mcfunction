
execute if score player_speed settings matches 1 run effect give @a[tag=ingame] minecraft:speed 5 0 true

execute if score player_speed settings matches 2 run effect give @a[tag=ingame] minecraft:speed 5 1 true

execute if score player_speed settings matches 3 run effect give @a[tag=ingame] minecraft:speed 5 2 true

effect give @a[tag=ghost] minecraft:speed 5 3 true

execute if score vote_effects data matches 1 run effect give @a[tag=ingame] minecraft:slowness 5 255 true

execute if score fix sabotage matches 1 as @a[tag=crewmate] unless entity @s[tag=ghost] run effect give @s minecraft:blindness 5 255 true
