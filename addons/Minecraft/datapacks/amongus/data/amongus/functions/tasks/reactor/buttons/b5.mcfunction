
data modify storage tasks:reactor status.right.1 set value '{"text":"⬤","color":"dark_green"}'
data modify storage tasks:reactor status.right.2 set value '{"text":"⬤","color":"dark_green"}'
data modify storage tasks:reactor status.right.3 set value '{"text":"⬤","color":"dark_green"}'
data modify storage tasks:reactor status.right.4 set value '{"text":"⬤","color":"dark_green"}'


data modify storage tasks:reactor button.1 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 1"}}'
data modify storage tasks:reactor button.2 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 2"}}'
data modify storage tasks:reactor button.3 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 3"}}'
data modify storage tasks:reactor button.4 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 4"}}'
data modify storage tasks:reactor button.5 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 5"}}'
data modify storage tasks:reactor button.6 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 6"}}'
data modify storage tasks:reactor button.7 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 7"}}'
data modify storage tasks:reactor button.8 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 8"}}'
data modify storage tasks:reactor button.9 set value '{"text":"⬤","color":"#cedced","clickEvent":{"action":"run_command","value":"/trigger btn.reac.e set 9"}}'

scoreboard players reset @s btn.reac.e
scoreboard players enable @s btn.reac.e