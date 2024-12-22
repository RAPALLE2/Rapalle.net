
execute if score enough_player data matches 1 if score impostors settings matches 3 if score player_count data matches ..8 run scoreboard players set impostors settings 2

execute if score enough_player data matches 1 if score impostors settings matches 2 if score player_count data matches ..6 run scoreboard players set impostors settings 1

execute if score enough_player data matches 1 run scoreboard players set starting data 1

execute if score enough_player data matches 1 run tellraw @a[tag=joined] {"text":"[Among Us] Game starts!","color":"#00FF40"}

execute if score enough_player data matches 0 run tellraw @a[tag=joined] {"text":"[Among Us] Not enough players!","color":"#FF0000"}
