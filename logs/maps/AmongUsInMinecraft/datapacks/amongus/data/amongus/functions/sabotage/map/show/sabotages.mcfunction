
data modify storage sabotage:map meltdown set value '{"text":"█","color":"#BCBCBC","clickEvent":{"action":"run_command","value":"/trigger activate_sab set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Sabotage the reactor!","color":"gold"}}}'
data modify storage sabotage:map depleted set value '{"text":"█","color":"#BCBCBC","clickEvent":{"action":"run_command","value":"/trigger activate_sab set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Sabotage O2!","color":"gold"}}}'
data modify storage sabotage:map fix set value '{"text":"█","color":"#BCBCBC","clickEvent":{"action":"run_command","value":"/trigger activate_sab set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Sabotage the lights!","color":"gold"}}}'
data modify storage sabotage:map comms set value '{"text":"█","color":"#BCBCBC","clickEvent":{"action":"run_command","value":"/trigger activate_sab set 4"},"hoverEvent":{"action":"show_text","contents":{"text":"Sabotage Comms!","color":"gold"}}}'


execute unless score cooldown sabotage matches ..0 run function amongus:sabotage/map/cooldown

execute unless score allDoors open matches 7 run function amongus:sabotage/map/doors_closed
