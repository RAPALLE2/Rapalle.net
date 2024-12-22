
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","com"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","low"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","nav"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","o2"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","weap"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","sec"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","shld"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rdp","up"]}

kill @e[type=minecraft:area_effect_cloud,tag=rdp,sort=random,limit=1]

execute unless entity @e[type=minecraft:area_effect_cloud,tag=com] run scoreboard players set @s com.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=com] run scoreboard players set @s com.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=low] run scoreboard players set @s low.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=low] run scoreboard players set @s low.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=nav] run scoreboard players set @s nav.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=nav] run scoreboard players set @s nav.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=o2] run scoreboard players set @s o2.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=o2] run scoreboard players set @s o2.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=weap] run scoreboard players set @s weap.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=weap] run scoreboard players set @s weap.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=sec] run scoreboard players set @s sec.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=sec] run scoreboard players set @s sec.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=shld] run scoreboard players set @s shld.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=shld] run scoreboard players set @s shld.power 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=up] run scoreboard players set @s up.power.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=up] run scoreboard players set @s up.power 0

kill @e[type=minecraft:area_effect_cloud,tag=rdp]
