
execute as @a[tag=ingame] at @s run stopsound @s ambient minecraft:ambient.warped_forest.loop
execute as @a[tag=ingame] at @s run playsound minecraft:ambient.warped_forest.loop ambient @s ~ ~ ~ 100 1
schedule function amongus:game/sound/ambient 45s
