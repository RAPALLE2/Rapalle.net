
bossbar set amongus:lobby_display players @a[tag=joined]

execute store result bossbar amongus:lobby_display max run scoreboard players get max_player data
execute store result bossbar amongus:lobby_display value run scoreboard players get player_count data

execute if score enough_player data matches 0 run bossbar set amongus:lobby_display name ["",{"text":"Among Us - Players ","color":"gold"},{"score":{"name":"player_count","objective":"data"},"color":"#FB0006"},{"text":"/","color":"#FB0006"},{"score":{"name":"max_player","objective":"data"},"color":"#FB0006"}]
execute if score enough_player data matches 0 run bossbar set amongus:lobby_display color red


execute if score enough_player data matches 1 run bossbar set amongus:lobby_display name ["",{"text":"Among Us - Players ","color":"gold"},{"score":{"name":"player_count","objective":"data"},"color":"green"},{"text":"/","color":"green"},{"score":{"name":"max_player","objective":"data"},"color":"green"}]
execute if score enough_player data matches 1 run bossbar set amongus:lobby_display color green
