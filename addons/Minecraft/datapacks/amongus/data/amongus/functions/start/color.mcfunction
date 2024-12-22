

scoreboard players add current_color color 1

execute as @e[tag=ingame,sort=random,scores={color=0},limit=1] store result score @s color run scoreboard players get current_color color

execute if score current_color color < player_count data run function amongus:start/color
