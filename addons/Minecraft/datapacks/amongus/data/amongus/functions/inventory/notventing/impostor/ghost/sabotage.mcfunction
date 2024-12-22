
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{SabotageMap:1}}]}] run replaceitem entity @s hotbar.3 barrier{display:{Name:'{"text":"Sabotage","color":"gold","italic":false}',Lore:['{"text":"Move this item to your Offhand","italic":false}','[{"text":" to ","italic":false},{"text":"Sabotage","color":"gold","italic":true},{"text":"!","italic":false}]']},CustomModelData:5,SabotageMap:1} 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{SabotageMap:1}}]}] run replaceitem entity @s hotbar.3 minecraft:air
