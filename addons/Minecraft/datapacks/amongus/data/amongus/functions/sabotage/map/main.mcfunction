

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{SabotageMap:1}}]}] unless entity @s[tag=showSabotage] run function amongus:sabotage/map/enable

execute if entity @s[tag=showSabotage] run function amongus:sabotage/map/showsabotage
