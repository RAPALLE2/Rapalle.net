
function amongus:tasks/power0/reset

data modify storage tasks:power indicator.1.low set value '{"text":"█","color":"#000000"}'

data modify storage tasks:power slider.0.low set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger low.power.0a set 8"}}'
data modify storage tasks:power slider.1.low set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger low.power.0a set 6"}}'
data modify storage tasks:power slider.2.low set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger low.power.0a set 4"}}'
data modify storage tasks:power slider.3.low set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger low.power.0a set 2"}}'
data modify storage tasks:power slider.4.low set value '{"text":"█","color":"#a50209"}'

function amongus:tasks/power0/canvas

scoreboard players set @s low.power.0a 1
scoreboard players enable @s low.power.0a
