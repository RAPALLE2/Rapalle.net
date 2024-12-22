
tag @s remove impostor

function amongus:display/noimpostor

clear @s

execute store result score impostor temp if entity @e[tag=impostor]

execute if score impostor temp matches 0 as @e[tag=crewmate, limit=1] run tag @s add temp_postor

execute as @e[tag=temp_postor] run tag @s add impostor
execute as @e[tag=temp_postor] run tag @s remove crewmate
execute as @e[tag=temp_postor] run tag @s remove temp_postor

tag @s add crewmate

scoreboard players reset @s kill

tag @s remove temp_changeRole
