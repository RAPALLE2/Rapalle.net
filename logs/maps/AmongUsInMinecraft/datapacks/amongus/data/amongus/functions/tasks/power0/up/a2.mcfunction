
function amongus:tasks/power0/reset

data modify storage tasks:power slider.0.up set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger up.power.0a set 8"}}'
data modify storage tasks:power slider.1.up set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger up.power.0a set 6"}}'
data modify storage tasks:power slider.2.up set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger up.power.0a set 4"}}'
data modify storage tasks:power slider.3.up set value '{"text":"█","color":"#a50209"}'
data modify storage tasks:power slider.4.up set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger up.power.0a set 0"}}'

function amongus:tasks/power0/canvas

scoreboard players set @s up.power.0a 3
scoreboard players enable @s up.power.0a
