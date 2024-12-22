
function amongus:tasks/power0/reset

data modify storage tasks:power slider.0.com set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger com.power.0a set 8"}}'
data modify storage tasks:power slider.1.com set value '{"text":"█","color":"#a50209"}'
data modify storage tasks:power slider.2.com set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger com.power.0a set 4"}}'
data modify storage tasks:power slider.3.com set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger com.power.0a set 2"}}'
data modify storage tasks:power slider.4.com set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger com.power.0a set 0"}}'

function amongus:tasks/power0/canvas

scoreboard players set @s com.power.0a 7
scoreboard players enable @s com.power.0a
