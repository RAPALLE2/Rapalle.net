
advancement revoke @s only amongus:navwiring

tag @s add busy

scoreboard players set @s busy 1

scoreboard players set @s nav.wiring 0

tag @s add nav.wiring

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

scoreboard players set @s wireA.connected 0
scoreboard players set @s wireB.connected 0
scoreboard players set @s wireC.connected 0
scoreboard players set @s wireD.connected 0

function amongus:tasks/wires/rng4a
function amongus:tasks/wires/rng4b

function amongus:tasks/wires/nav/shaft
