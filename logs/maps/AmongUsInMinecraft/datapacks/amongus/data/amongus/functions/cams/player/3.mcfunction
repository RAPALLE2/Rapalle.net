
execute store result entity @e[tag=cams_p3,limit=1] Pos[0] double 0.01 run scoreboard players get newX cams
execute store result entity @e[tag=cams_p3,limit=1] Pos[1] double 0.01 run scoreboard players get newY cams

execute as @e[tag=cams_p3,limit=1] at @s run particle minecraft:dust 0.012 1.000 0.012 0.3 ~ ~ ~ 0 0 0 2 0
