
say func

tag @s add med.sample.init

execute as @e[type=minecraft:villager,tag=med.sample] at @s if entity @a[tag=med.sample.init,distance=..1.25] run say hi

execute if score @s med.sample matches 0 run function amongus:tasks/sample/init

advancement revoke @s only amongus:medsample
tag @s remove med.sample.init
