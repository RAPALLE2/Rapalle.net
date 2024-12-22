
scoreboard players set numA rng 0
scoreboard players set numB rng 0
scoreboard players set numC rng 0
scoreboard players set numD rng 0
scoreboard players set numE rng 0
scoreboard players set numF rng 0
scoreboard players set numG rng 0

summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldA"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldB"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldC"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldD"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldE"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldF"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["shld_rng","shldG"]}


kill @e[tag=shld_rng,sort=random,limit=3]

execute unless entity @e[tag=shldA] run scoreboard players set numA rng 1
execute unless entity @e[tag=shldA] run scoreboard players set @s shldA 0
execute unless entity @e[tag=shldB] run scoreboard players set numB rng 1
execute unless entity @e[tag=shldB] run scoreboard players set @s shldB 0
execute unless entity @e[tag=shldC] run scoreboard players set numC rng 1
execute unless entity @e[tag=shldC] run scoreboard players set @s shldC 0
execute unless entity @e[tag=shldD] run scoreboard players set numD rng 1
execute unless entity @e[tag=shldD] run scoreboard players set @s shldD 0
execute unless entity @e[tag=shldE] run scoreboard players set numE rng 1
execute unless entity @e[tag=shldE] run scoreboard players set @s shldE 0
execute unless entity @e[tag=shldF] run scoreboard players set numF rng 1
execute unless entity @e[tag=shldF] run scoreboard players set @s shldF 0
execute unless entity @e[tag=shldG] run scoreboard players set numG rng 1
execute unless entity @e[tag=shldG] run scoreboard players set @s shldG 0


execute if score @s shldA matches 0 run scoreboard players enable @s shldA
execute if score @s shldB matches 0 run scoreboard players enable @s shldB
execute if score @s shldC matches 0 run scoreboard players enable @s shldC
execute if score @s shldD matches 0 run scoreboard players enable @s shldD
execute if score @s shldE matches 0 run scoreboard players enable @s shldE
execute if score @s shldF matches 0 run scoreboard players enable @s shldF
execute if score @s shldG matches 0 run scoreboard players enable @s shldG

kill @e[tag=shld_rng]
