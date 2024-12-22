
execute as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 1 0.5
worldborder warning distance 2147483647
schedule function amongus:sabotage/depleted/schedule/wbb 12t
bossbar set amongus:depleted name ["",{"text":"Oxygen Depleted in ","color":"#FFFF00"},{"score":{"name":"countdown","objective":"sabotage"},"color":"#FFFF00"},{"text":" (","color":"#FFFF00"},{"score":{"name":"currentPlayer","objective":"sabotage"},"color":"#FFFF00"},{"text":"/","color":"#FFFF00"},{"score":{"name":"neededPlayer","objective":"sabotage"},"color":"#FFFF00"},{"text":")","color":"#FFFF00"}]
