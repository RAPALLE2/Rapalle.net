
execute if score print_vote data matches 1 run function amongus:vote/print

execute if score print_vote data matches 1 run title @a[tag=ingame] actionbar ["",{"text":"Voting Time - ","color":"gold"},{"score":{"name":"vote_timer","objective":"data"},"color":"gold"}]

execute if score print_vote data matches 1 unless entity @a[tag=!ghost,scores={vote=0}] run scoreboard players set show_results data 1

execute if score vote_timer data matches 1.. if score tick data matches 20 run scoreboard players remove vote_timer data 1

execute if score print_vote data matches 1 if score vote_timer data matches 0 run scoreboard players set show_results data 1

execute if score results_timer data matches ..17 if score tick data matches 20 run scoreboard players remove results_timer data 1

execute if score results_timer data matches 9 if score tick data matches 10 run tellraw @a[tag=ingame] ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]
execute if score results_timer data matches 9 if score tick data matches 10 run effect give @a[tag=ingame] minecraft:blindness 5 255 true

execute if score show_results data matches 1 run function amongus:vote/results

execute if score results_timer data matches 7 run function amongus:vote/eject
execute if score results_timer data matches 0 run function amongus:game/sound/ambient
execute if score results_timer data matches 0 run scoreboard players set preventWin data 0
execute if score results_timer data matches 0 run scoreboard players set vote_enable data 0
