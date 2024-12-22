
execute if score impostors settings matches 3 if score player_count data matches ..8 run scoreboard players set impostors settings 2

execute if score impostors settings matches 2 if score player_count data matches ..6 run scoreboard players set impostors settings 1

scoreboard players set starting data 1

function amongus:start/ai

tellraw @a[tag=joined] {"text":"[Among Us] Game starts!","color":"#00FF40"}
