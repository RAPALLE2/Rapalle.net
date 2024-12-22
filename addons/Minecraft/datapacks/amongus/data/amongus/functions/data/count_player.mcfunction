

scoreboard players set player_count data 0
execute if score game_started data matches 0 as @e[tag=joined] run scoreboard players add player_count data 1
execute if score game_started data matches 1 as @e[tag=ingame] run scoreboard players add player_count data 1

scoreboard players set impostor_alive data 0
execute as @e[tag=impostor] unless entity @s[tag=ghost] run scoreboard players add impostor_alive data 1

scoreboard players set crewmate_alive data 0
execute as @e[tag=crewmate] unless entity @s[tag=ghost] run scoreboard players add crewmate_alive data 1
