

data modify storage tasks:reactor button.1 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 1"}}'
data modify storage tasks:reactor button.2 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 2"}}'
data modify storage tasks:reactor button.3 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 3"}}'
data modify storage tasks:reactor button.4 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 4"}}'
data modify storage tasks:reactor button.5 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 5"}}'
data modify storage tasks:reactor button.6 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 6"}}'
data modify storage tasks:reactor button.7 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 7"}}'
data modify storage tasks:reactor button.8 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 8"}}'
data modify storage tasks:reactor button.9 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.a set 9"}}'

scoreboard players reset @s btn.reac.a
scoreboard players enable @s btn.reac.a
