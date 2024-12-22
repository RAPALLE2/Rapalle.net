
tag @s add showSabotage

execute if score doorA open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorA
execute if score doorB open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorB
execute if score doorC open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorC
execute if score doorD open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorD
execute if score doorE open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorE
execute if score doorF open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorF
execute if score doorG open matches 1 unless score ongoing sabotage matches 1 run scoreboard players enable @s doorG

execute if score allDoors open matches 7 unless score cooldown sabotage matches ..-1 unless score ongoing sabotage matches 1 run scoreboard players enable @s activate_sab
