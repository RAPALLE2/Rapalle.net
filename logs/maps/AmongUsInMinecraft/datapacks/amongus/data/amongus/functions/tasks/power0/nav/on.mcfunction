
function amongus:tasks/power0/reset

data modify storage tasks:power indicator.0.nav set value '{"text":"█","color":"#feff5d"}'

data modify storage tasks:power slider.0.nav set value '{"text":"█","color":"#a50209"}'
data modify storage tasks:power slider.1.nav set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger nav.power.0a set 6"}}'
data modify storage tasks:power slider.2.nav set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger nav.power.0a set 4"}}'
data modify storage tasks:power slider.3.nav set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger nav.power.0a set 2"}}'
data modify storage tasks:power slider.4.nav set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger nav.power.0a set 0"}}'

function amongus:tasks/power0/canvas

scoreboard players set @s nav.power.0a 9
scoreboard players enable @s nav.power.0a
