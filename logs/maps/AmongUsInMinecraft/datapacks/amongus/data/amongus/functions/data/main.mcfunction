
function amongus:data/count_player

execute store result score max_player data run scoreboard players get max_player settings

scoreboard players set enough_player data 0
execute if score player_count data matches 4.. run scoreboard players set enough_player data 1

execute if score player_count data >= max_player data run scoreboard players set join_possible data 0
execute if score player_count data >= max_player data if entity @a[tag=new_player] run function amongus:lobby/signs/joinb

execute as @a[tag=new_player] run tag @s remove new_player

execute if score game_started data matches 0 run scoreboard players set timePlayed data 0

execute if score game_started data matches 1 run scoreboard players add timePlayed data 1
