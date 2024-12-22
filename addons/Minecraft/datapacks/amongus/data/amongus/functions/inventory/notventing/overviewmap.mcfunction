
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{OverviewMap:1}}]}] run replaceitem entity @s hotbar.0 minecraft:barrier{display:{Name:'{"text":"Overview Map","color":"gold","bold":false,"italic":false}',Lore:['{"text":"Move this item to your Offhand","italic":false}','[{"text":" to show the ","italic":false},{"text":"Overview Map","color":"gold","italic":true},{"text":".","italic":false}]']},CustomModelData:1,OverviewMap:1} 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{OverviewMap:1}}]}] run replaceitem entity @s hotbar.0 minecraft:air
