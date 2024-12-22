
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rud","com"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rud","caf"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rud","nav"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rud","elec"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rud","weap"]}

kill @e[type=minecraft:area_effect_cloud,tag=rud,sort=random,limit=1]

execute unless entity @e[type=minecraft:area_effect_cloud,tag=caf] run scoreboard players set @s caf.upload.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=caf] run scoreboard players set @s caf.upload 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=com] run scoreboard players set @s com.upload.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=com] run scoreboard players set @s com.upload 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=elec] run scoreboard players set @s elec.upload.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=elec] run scoreboard players set @s elec.upload 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=nav] run scoreboard players set @s nav.upload.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=nav] run scoreboard players set @s nav.upload 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=weap] run scoreboard players set @s weap.upload.0 0
execute unless entity @e[type=minecraft:area_effect_cloud,tag=weap] run scoreboard players set @s weap.upload 0



kill @e[type=minecraft:area_effect_cloud,tag=rud]
