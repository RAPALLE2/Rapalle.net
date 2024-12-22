
function amongus:tasks/power0/reset

data modify storage tasks:power slider.0.o2 set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger o2.power.0a set 8"}}'
data modify storage tasks:power slider.1.o2 set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger o2.power.0a set 6"}}'
data modify storage tasks:power slider.2.o2 set value '{"text":"█","color":"#a50209"}'
data modify storage tasks:power slider.3.o2 set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger o2.power.0a set 2"}}'
data modify storage tasks:power slider.4.o2 set value '{"text":"█","color":"#3A3A3A","clickEvent":{"action":"run_command","value":"/trigger o2.power.0a set 0"}}'

function amongus:tasks/power0/canvas

scoreboard players set @s o2.power.0a 5
scoreboard players enable @s o2.power.0a
