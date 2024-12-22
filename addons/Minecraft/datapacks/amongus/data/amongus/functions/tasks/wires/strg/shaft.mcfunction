
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]


execute if score @s wireA matches 1 run data modify storage tasks:wires wireA.left.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireA matches 2 run data modify storage tasks:wires wireA.left.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireA matches 3 run data modify storage tasks:wires wireA.left.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireA matches 4 run data modify storage tasks:wires wireA.left.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireB matches 1 run data modify storage tasks:wires wireB.left.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireB matches 2 run data modify storage tasks:wires wireB.left.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireB matches 3 run data modify storage tasks:wires wireB.left.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireB matches 4 run data modify storage tasks:wires wireB.left.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireC matches 1 run data modify storage tasks:wires wireC.left.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireC matches 2 run data modify storage tasks:wires wireC.left.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireC matches 3 run data modify storage tasks:wires wireC.left.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireC matches 4 run data modify storage tasks:wires wireC.left.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireD matches 1 run data modify storage tasks:wires wireD.left.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireD matches 2 run data modify storage tasks:wires wireD.left.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireD matches 3 run data modify storage tasks:wires wireD.left.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireD matches 4 run data modify storage tasks:wires wireD.left.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireE matches 1 run data modify storage tasks:wires wireA.right.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireE matches 2 run data modify storage tasks:wires wireA.right.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireE matches 3 run data modify storage tasks:wires wireA.right.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireE matches 4 run data modify storage tasks:wires wireA.right.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireF matches 1 run data modify storage tasks:wires wireB.right.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireF matches 2 run data modify storage tasks:wires wireB.right.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireF matches 3 run data modify storage tasks:wires wireB.right.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireF matches 4 run data modify storage tasks:wires wireB.right.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireG matches 1 run data modify storage tasks:wires wireC.right.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireG matches 2 run data modify storage tasks:wires wireC.right.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireG matches 3 run data modify storage tasks:wires wireC.right.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireG matches 4 run data modify storage tasks:wires wireC.right.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s wireH matches 1 run data modify storage tasks:wires wireD.right.cable set value '{"text":"█","color":"#003444"}'
execute if score @s wireH matches 2 run data modify storage tasks:wires wireD.right.cable set value '{"text":"█","color":"#87006b"}'
execute if score @s wireH matches 3 run data modify storage tasks:wires wireD.right.cable set value '{"text":"█","color":"#023505"}'
execute if score @s wireH matches 4 run data modify storage tasks:wires wireD.right.cable set value '{"text":"█","color":"#9b0000"}'

execute if score @s connectorA matches 0 run data modify storage tasks:wires wireA.left.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorA set 1"}}'
execute if score @s connectorB matches 0 run data modify storage tasks:wires wireB.left.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorB set 1"}}'
execute if score @s connectorC matches 0 run data modify storage tasks:wires wireC.left.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorC set 1"}}'
execute if score @s connectorD matches 0 run data modify storage tasks:wires wireD.left.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorD set 1"}}'

execute if score @s connectorA matches 1.. run data modify storage tasks:wires wireA.left.connector set value '{"text":"█","color":"#6c6c6c"}'
execute if score @s connectorB matches 1.. run data modify storage tasks:wires wireB.left.connector set value '{"text":"█","color":"#6c6c6c"}'
execute if score @s connectorC matches 1.. run data modify storage tasks:wires wireC.left.connector set value '{"text":"█","color":"#6c6c6c"}'
execute if score @s connectorD matches 1.. run data modify storage tasks:wires wireD.left.connector set value '{"text":"█","color":"#6c6c6c"}'

execute if score @s connectorE matches 0 run data modify storage tasks:wires wireA.right.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorE set 1"}}'
execute if score @s connectorF matches 0 run data modify storage tasks:wires wireB.right.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorF set 1"}}'
execute if score @s connectorG matches 0 run data modify storage tasks:wires wireC.right.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorG set 1"}}'
execute if score @s connectorH matches 0 run data modify storage tasks:wires wireD.right.connector set value '{"text":"█","color":"#b7410e","clickEvent":{"action":"run_command","value":"/trigger connectorH set 1"}}'

execute if score @s connectorE matches 1.. run data modify storage tasks:wires wireA.right.connector set value '{"text":"█","color":"#6c6c6c"}'
execute if score @s connectorF matches 1.. run data modify storage tasks:wires wireB.right.connector set value '{"text":"█","color":"#6c6c6c"}'
execute if score @s connectorG matches 1.. run data modify storage tasks:wires wireC.right.connector set value '{"text":"█","color":"#6c6c6c"}'
execute if score @s connectorH matches 1.. run data modify storage tasks:wires wireD.right.connector set value '{"text":"█","color":"#6c6c6c"}'

data modify storage tasks:wires indicatorA set value '{"text":"█","color":"#3d3d3d"}'
data modify storage tasks:wires indicatorB set value '{"text":"█","color":"#3d3d3d"}'
data modify storage tasks:wires indicatorC set value '{"text":"█","color":"#3d3d3d"}'
data modify storage tasks:wires indicatorD set value '{"text":"█","color":"#3d3d3d"}'

execute if score @s wireA.connected matches 1 if score @s wireA = @s wireE run data modify storage tasks:wires indicatorA set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireA.connected matches 1 if score @s wireA = @s wireF run data modify storage tasks:wires indicatorB set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireA.connected matches 1 if score @s wireA = @s wireG run data modify storage tasks:wires indicatorC set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireA.connected matches 1 if score @s wireA = @s wireH run data modify storage tasks:wires indicatorD set value '{"text":"█","color":"#fbea72"}'

execute if score @s wireB.connected matches 1 if score @s wireB = @s wireE run data modify storage tasks:wires indicatorA set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireB.connected matches 1 if score @s wireB = @s wireF run data modify storage tasks:wires indicatorB set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireB.connected matches 1 if score @s wireB = @s wireG run data modify storage tasks:wires indicatorC set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireB.connected matches 1 if score @s wireB = @s wireH run data modify storage tasks:wires indicatorD set value '{"text":"█","color":"#fbea72"}'

execute if score @s wireC.connected matches 1 if score @s wireC = @s wireE run data modify storage tasks:wires indicatorA set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireC.connected matches 1 if score @s wireC = @s wireF run data modify storage tasks:wires indicatorB set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireC.connected matches 1 if score @s wireC = @s wireG run data modify storage tasks:wires indicatorC set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireC.connected matches 1 if score @s wireC = @s wireH run data modify storage tasks:wires indicatorD set value '{"text":"█","color":"#fbea72"}'

execute if score @s wireD.connected matches 1 if score @s wireD = @s wireE run data modify storage tasks:wires indicatorA set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireD.connected matches 1 if score @s wireD = @s wireF run data modify storage tasks:wires indicatorB set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireD.connected matches 1 if score @s wireD = @s wireG run data modify storage tasks:wires indicatorC set value '{"text":"█","color":"#fbea72"}'
execute if score @s wireD.connected matches 1 if score @s wireD = @s wireH run data modify storage tasks:wires indicatorD set value '{"text":"█","color":"#fbea72"}'


tellraw @s [{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#fbea72"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"indicatorA","storage":"tasks:wires","interpret":true},{"text":"\n"},{"nbt":"wireA.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireA.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireA.left.connector","storage":"tasks:wires","interpret":true},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"wireA.right.connector","storage":"tasks:wires","interpret":true},{"nbt":"wireA.right.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireA.right.cable","storage":"tasks:wires","interpret":true},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#fbea72"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"indicatorB","storage":"tasks:wires","interpret":true},{"text":"\n"},{"nbt":"wireB.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireB.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireB.left.connector","storage":"tasks:wires","interpret":true},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"wireB.right.connector","storage":"tasks:wires","interpret":true},{"nbt":"wireB.right.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireB.right.cable","storage":"tasks:wires","interpret":true},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#fbea72"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"indicatorC","storage":"tasks:wires","interpret":true},{"text":"\n"},{"nbt":"wireC.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireC.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireC.left.connector","storage":"tasks:wires","interpret":true},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"wireC.right.connector","storage":"tasks:wires","interpret":true},{"nbt":"wireC.right.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireC.right.cable","storage":"tasks:wires","interpret":true},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#fbea72"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"indicatorD","storage":"tasks:wires","interpret":true},{"text":"\n"},{"nbt":"wireD.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireD.left.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireD.left.connector","storage":"tasks:wires","interpret":true},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"nbt":"wireD.right.connector","storage":"tasks:wires","interpret":true},{"nbt":"wireD.right.cable","storage":"tasks:wires","interpret":true},{"nbt":"wireD.right.cable","storage":"tasks:wires","interpret":true},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"},{"text":"\n"},{"text":"█","color":"#3d3d3d"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#6c6c6c"},{"text":"█","color":"#3d3d3d"}]
