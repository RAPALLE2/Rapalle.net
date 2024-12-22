
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s wireA.connected matches 1 if score @s wireB.connected matches 1 if score @s wireC.connected matches 1 if score @s wireD.connected matches 1 run scoreboard players set @s nav.wiring 1

execute if score @s wireA.connected matches 1 if score @s wireB.connected matches 1 if score @s wireC.connected matches 1 if score @s wireD.connected matches 1 at @s run function amongus:tasks/completed

execute if score @s nav.wiring matches 1 if score @s fix.wiring matches 2 run scoreboard players add @s fix.wiring 1
execute if score @s nav.wiring matches 1 if score @s fix.wiring matches 1 run function amongus:tasks/wires/nav/new2
execute if score @s nav.wiring matches 1 if score @s fix.wiring matches 0 run function amongus:tasks/wires/nav/new1

scoreboard players reset @s wireA
scoreboard players reset @s wireB
scoreboard players reset @s wireC
scoreboard players reset @s wireD
scoreboard players reset @s wireE
scoreboard players reset @s wireF
scoreboard players reset @s wireG
scoreboard players reset @s wireH

scoreboard players reset @s connectorA
scoreboard players reset @s connectorB
scoreboard players reset @s connectorC
scoreboard players reset @s connectorD
scoreboard players reset @s connectorE
scoreboard players reset @s connectorF
scoreboard players reset @s connectorG
scoreboard players reset @s connectorH

scoreboard players reset @s wireA.connected
scoreboard players reset @s wireB.connected
scoreboard players reset @s wireC.connected
scoreboard players reset @s wireD.connected

scoreboard players set @s check 0

scoreboard players set @s failed 0

tag @s remove busy

tag @s remove nav.wiring
