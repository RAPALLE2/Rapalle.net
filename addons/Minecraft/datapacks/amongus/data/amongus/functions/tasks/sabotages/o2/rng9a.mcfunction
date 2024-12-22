

summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorA"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorB"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorC"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorD"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorE"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorF"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorG"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorH"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["o2_rng","colorI"]}



kill @e[tag=o2_rng,sort=random,limit=1]

execute unless entity @e[tag=colorA] run scoreboard players set @s o2.values.a 1
execute unless entity @e[tag=colorB] run scoreboard players set @s o2.values.a 2
execute unless entity @e[tag=colorC] run scoreboard players set @s o2.values.a 3
execute unless entity @e[tag=colorD] run scoreboard players set @s o2.values.a 4
execute unless entity @e[tag=colorE] run scoreboard players set @s o2.values.a 5
execute unless entity @e[tag=colorF] run scoreboard players set @s o2.values.a 6
execute unless entity @e[tag=colorG] run scoreboard players set @s o2.values.a 7
execute unless entity @e[tag=colorH] run scoreboard players set @s o2.values.a 8
execute unless entity @e[tag=colorI] run scoreboard players set @s o2.values.a 9

kill @e[tag=o2_rng]
