

execute positioned 81 20 35 as @a[dx=4,dy=3,dz=3] run tag @s add cams_watcher
execute as @a[tag=cams_watcher] positioned 81 20 35 unless entity @s[dx=4,dy=3,dz=3] run tag @s remove cams_watcher

execute if entity @a[tag=cams_watcher] run function amongus:cams/check
