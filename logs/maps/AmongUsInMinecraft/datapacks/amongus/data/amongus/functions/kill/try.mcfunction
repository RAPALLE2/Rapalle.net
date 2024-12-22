
execute if score kill_distance settings matches 0 as @e[tag=crewmate,tag=!ghost,distance=0..1.5,limit=1,sort=nearest] run tag @s add temp_ghost
execute if score kill_distance settings matches 1 as @e[tag=crewmate,tag=!ghost,distance=0..3,limit=1,sort=nearest] run tag @s add temp_ghost
execute if score kill_distance settings matches 2 as @e[tag=crewmate,tag=!ghost,distance=0..4.5,limit=1,sort=nearest] run tag @s add temp_ghost

scoreboard players set @s kill 0

execute if entity @e[tag=temp_ghost] run scoreboard players operation @s kill -= kill_cd settings

execute if entity @e[tag=temp_ghost] run function amongus:kill/cooldown

execute as @e[tag=temp_ghost] at @s run function amongus:ghost/init

tag @s remove temp_kill
