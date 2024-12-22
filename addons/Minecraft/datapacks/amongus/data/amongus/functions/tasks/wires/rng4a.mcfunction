
scoreboard players set numA rng 0
scoreboard players set numB rng 0
scoreboard players set numC rng 0
scoreboard players set numD rng 0


scoreboard players set num1 rng 0
scoreboard players set num2 rng 0
scoreboard players set num3 rng 0
scoreboard players set num4 rng 0


summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg1"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg2"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg3"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg4"]}



kill @e[tag=rg_rng,sort=random,limit=1]

execute unless entity @e[tag=rg1] run scoreboard players set numA rng 1
execute unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute unless entity @e[tag=rg2] run scoreboard players set numA rng 2
execute unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute unless entity @e[tag=rg3] run scoreboard players set numA rng 3
execute unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute unless entity @e[tag=rg4] run scoreboard players set numA rng 4
execute unless entity @e[tag=rg4] run scoreboard players set num4 rng 4


kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numB rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numB rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numB rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numB rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4


kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numC rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numC rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numC rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numC rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4


kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numD rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numD rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numD rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numD rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4




kill @e[tag=rg_rng]

execute if score numA rng matches 1 run scoreboard players set @s wireA 1
execute if score numA rng matches 2 run scoreboard players set @s wireB 1
execute if score numA rng matches 3 run scoreboard players set @s wireC 1
execute if score numA rng matches 4 run scoreboard players set @s wireD 1


execute if score numB rng matches 1 run scoreboard players set @s wireA 2
execute if score numB rng matches 2 run scoreboard players set @s wireB 2
execute if score numB rng matches 3 run scoreboard players set @s wireC 2
execute if score numB rng matches 4 run scoreboard players set @s wireD 2


execute if score numC rng matches 1 run scoreboard players set @s wireA 3
execute if score numC rng matches 2 run scoreboard players set @s wireB 3
execute if score numC rng matches 3 run scoreboard players set @s wireC 3
execute if score numC rng matches 4 run scoreboard players set @s wireD 3


execute if score numD rng matches 1 run scoreboard players set @s wireA 4
execute if score numD rng matches 2 run scoreboard players set @s wireB 4
execute if score numD rng matches 3 run scoreboard players set @s wireC 4
execute if score numD rng matches 4 run scoreboard players set @s wireD 4



scoreboard players set @s connectorA 0
scoreboard players set @s connectorB 0
scoreboard players set @s connectorC 0
scoreboard players set @s connectorD 0


scoreboard players enable @s connectorA
scoreboard players enable @s connectorB
scoreboard players enable @s connectorC
scoreboard players enable @s connectorD
