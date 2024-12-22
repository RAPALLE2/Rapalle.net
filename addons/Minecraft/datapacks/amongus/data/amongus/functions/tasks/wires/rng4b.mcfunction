
scoreboard players set numE rng 0
scoreboard players set numF rng 0
scoreboard players set numG rng 0
scoreboard players set numH rng 0

scoreboard players set num5 rng 0
scoreboard players set num6 rng 0
scoreboard players set num7 rng 0
scoreboard players set num8 rng 0

summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg5"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg6"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg7"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg8"]}


kill @e[tag=rg_rng,sort=random,limit=1]

execute unless entity @e[tag=rg5] run scoreboard players set numE rng 5
execute unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute unless entity @e[tag=rg6] run scoreboard players set numE rng 6
execute unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute unless entity @e[tag=rg7] run scoreboard players set numE rng 7
execute unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute unless entity @e[tag=rg8] run scoreboard players set numE rng 8
execute unless entity @e[tag=rg8] run scoreboard players set num8 rng 8

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numF rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numF rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numF rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numF rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numG rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numG rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numG rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numG rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numH rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numH rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numH rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numH rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8




kill @e[tag=rg_rng]


execute if score numE rng matches 5 run scoreboard players set @s wireE 1
execute if score numE rng matches 6 run scoreboard players set @s wireF 1
execute if score numE rng matches 7 run scoreboard players set @s wireG 1
execute if score numE rng matches 8 run scoreboard players set @s wireH 1

execute if score numF rng matches 5 run scoreboard players set @s wireE 2
execute if score numF rng matches 6 run scoreboard players set @s wireF 2
execute if score numF rng matches 7 run scoreboard players set @s wireG 2
execute if score numF rng matches 8 run scoreboard players set @s wireH 2

execute if score numG rng matches 5 run scoreboard players set @s wireE 3
execute if score numG rng matches 6 run scoreboard players set @s wireF 3
execute if score numG rng matches 7 run scoreboard players set @s wireG 3
execute if score numG rng matches 8 run scoreboard players set @s wireH 3

execute if score numH rng matches 5 run scoreboard players set @s wireE 4
execute if score numH rng matches 6 run scoreboard players set @s wireF 4
execute if score numH rng matches 7 run scoreboard players set @s wireG 4
execute if score numH rng matches 8 run scoreboard players set @s wireH 4

scoreboard players set @s connectorE 0
scoreboard players set @s connectorF 0
scoreboard players set @s connectorG 0
scoreboard players set @s connectorH 0

scoreboard players enable @s connectorE
scoreboard players enable @s connectorF
scoreboard players enable @s connectorG
scoreboard players enable @s connectorH
