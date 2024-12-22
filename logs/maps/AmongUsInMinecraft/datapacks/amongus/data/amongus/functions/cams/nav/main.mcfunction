
execute store result score tempX cams run data get entity @s Pos[0] 100
execute store result score tempZ cams run data get entity @s Pos[2] 100
scoreboard players remove tempX cams 1400
scoreboard players remove tempZ cams 2300

scoreboard players operation tempX cams /= 12 cams
scoreboard players operation tempZ cams /= 12 cams

scoreboard players set temp cams 0
execute if score tempX cams < 3 cams run scoreboard players set temp cams 1
execute if score tempZ cams < 3 cams run scoreboard players set temp cams 1
execute if score tempX cams > 97 cams run scoreboard players set temp cams 1
execute if score tempZ cams > 97 cams run scoreboard players set temp cams 1

scoreboard players set newX cams 8400
scoreboard players operation newX cams += tempX cams
scoreboard players set newY cams 2200
scoreboard players operation newY cams += tempZ cams

execute if score temp cams matches 0 run function amongus:cams/player/main
