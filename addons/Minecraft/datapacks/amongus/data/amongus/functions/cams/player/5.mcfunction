
execute store result entity @e[tag=cams_p5,limit=1] Pos[0] double 0.01 run scoreboard players get newX cams
execute store result entity @e[tag=cams_p5,limit=1] Pos[1] double 0.01 run scoreboard players get newY cams

execute as @e[tag=cams_p5,limit=1] at @s run particle minecraft:dust 0.749 0.149 0.690 0.3 ~ ~ ~ 0 0 0 2 0