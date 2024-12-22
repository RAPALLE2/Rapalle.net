
execute as @s at @s if entity @e[tag=DeadBody,distance=..3] run replaceitem entity @s hotbar.1 carrot_on_a_stick{display:{Name:'{"text":"Report","color":"green","italic":false}',Lore:['{"text":"Right click to report dead body!","italic":false}']},CustomModelData:1} 1

execute as @s at @s unless entity @e[tag=DeadBody,distance=..3] run replaceitem entity @s hotbar.1 barrier{display:{Name:'{"text":"No Action","color":"#FF0000","bold":false,"italic":false}',Lore:['[{"text":"This item will turn into ","italic":false},{"text":"Report","color":"#FF0000","italic":true},{"text":" a dead body.","italic":false}]']},CustomModelData:3} 1
