

execute if score impostors settings matches 1 as @e[sort=random,tag=ingame,limit=1] run tag @s add impostor

execute if score impostors settings matches 2 as @e[sort=random,tag=ingame,limit=2] run tag @s add impostor

execute if score impostors settings matches 3 as @e[sort=random,tag=ingame,limit=3] run tag @s add impostor

scoreboard players set impostor_count data 0
execute as @e[tag=impostor] run scoreboard players add impostor_count data 1
