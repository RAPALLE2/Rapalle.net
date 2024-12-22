
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","scan"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","reactor"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","power"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","sample"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","fuel"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","garbage"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","chute"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","asteroids"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rlt","upload"]}

kill @e[type=minecraft:area_effect_cloud,tag=rlt,sort=random,limit=2]

execute unless entity @e[type=minecraft:area_effect_cloud,tag=scan] run function amongus:start/tasks/long/scan
execute unless entity @e[type=minecraft:area_effect_cloud,tag=reactor] run function amongus:start/tasks/long/reactor
execute unless entity @e[type=minecraft:area_effect_cloud,tag=power] run function amongus:start/tasks/long/power
execute unless entity @e[type=minecraft:area_effect_cloud,tag=sample] run function amongus:start/tasks/long/sample
execute unless entity @e[type=minecraft:area_effect_cloud,tag=fuel] run function amongus:start/tasks/long/fuel
execute unless entity @e[type=minecraft:area_effect_cloud,tag=garbage] run function amongus:start/tasks/long/garbage
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chute] run function amongus:start/tasks/long/chute
execute unless entity @e[type=minecraft:area_effect_cloud,tag=asteroids] run function amongus:start/tasks/long/asteroids
execute unless entity @e[type=minecraft:area_effect_cloud,tag=upload] run function amongus:start/tasks/long/upload

kill @e[type=minecraft:area_effect_cloud,tag=rlt]
