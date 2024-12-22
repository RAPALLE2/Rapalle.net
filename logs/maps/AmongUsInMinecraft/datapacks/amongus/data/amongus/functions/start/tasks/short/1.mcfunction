
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","mainfolds"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","steering"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","shields"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","clean"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","course"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","align"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rst","calibrate"]}

kill @e[type=minecraft:area_effect_cloud,tag=rst,sort=random,limit=1]

execute unless entity @e[type=minecraft:area_effect_cloud,tag=mainfolds] run function amongus:start/tasks/short/manifolds
execute unless entity @e[type=minecraft:area_effect_cloud,tag=steering] run function amongus:start/tasks/short/steering
execute unless entity @e[type=minecraft:area_effect_cloud,tag=shields] run function amongus:start/tasks/short/shields
execute unless entity @e[type=minecraft:area_effect_cloud,tag=clean] run function amongus:start/tasks/short/clean
execute unless entity @e[type=minecraft:area_effect_cloud,tag=course] run function amongus:start/tasks/short/course
execute unless entity @e[type=minecraft:area_effect_cloud,tag=align] run function amongus:start/tasks/short/align
execute unless entity @e[type=minecraft:area_effect_cloud,tag=calibrate] run function amongus:start/tasks/short/calibrate

kill @e[type=minecraft:area_effect_cloud,tag=rst]
