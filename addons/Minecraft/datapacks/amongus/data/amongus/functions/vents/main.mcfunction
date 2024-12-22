execute unless entity @s[tag=venting] if score @s vent.enter matches 1.. if block ~ ~-1 ~ minecraft:black_concrete run function amongus:vents/enter

execute if entity @s[tag=venting,nbt={SelectedItemSlot:4}] if score @s vent.enter matches 1.. run function amongus:vents/move
execute if entity @s[tag=venting,nbt={SelectedItemSlot:5}] if score @s vent.enter matches 1.. run function amongus:vents/exit

execute if entity @s[tag=venting] run function amongus:vents/tp
