
execute unless block ~ ~-1 ~ minecraft:black_concrete run replaceitem entity @s hotbar.4 barrier{display:{Name:'{"text":"No Action","color":"#FF0000","bold":false,"italic":false}',Lore:['[{"text":"This item will turn into ","italic":false},{"text":"Vent","color":"#FF0000","italic":true}]','{"text":" if you are near a vent.","italic":false}']},CustomModelData:4} 1

execute if block ~ ~-1 ~ minecraft:black_concrete run replaceitem entity @s hotbar.4 knowledge_book{display:{Name:'{"text":"Vent","color":"#FF0000","bold":false,"italic":false}'},Recipes:["minecraft:repair_item"],CustomModelData:1} 1
