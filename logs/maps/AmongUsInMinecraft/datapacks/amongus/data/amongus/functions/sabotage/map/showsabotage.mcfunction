
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{SabotageMap:1}}]}] run function amongus:sabotage/map/if
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{SabotageMap:1}}]}] run function amongus:sabotage/map/disable
