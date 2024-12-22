
scoreboard players set @s rnA -1
scoreboard players set @s rnB -1
scoreboard players set @s rnC -1
scoreboard players set @s rnD -1
scoreboard players set @s rnE -1
scoreboard players set @s rnF -1
scoreboard players set @s rnG -1
scoreboard players set @s rnH -1
scoreboard players set @s rnI -1

summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn1"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn2"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn3"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn4"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn5"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn6"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn7"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn8"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn9"]}

kill @e[tag=rn_rng,sort=random,limit=1]

execute unless entity @e[tag=rn1] run scoreboard players set @s rnA 1
execute unless entity @e[tag=rn2] run scoreboard players set @s rnB 1
execute unless entity @e[tag=rn3] run scoreboard players set @s rnC 1
execute unless entity @e[tag=rn4] run scoreboard players set @s rnD 1
execute unless entity @e[tag=rn5] run scoreboard players set @s rnE 1
execute unless entity @e[tag=rn6] run scoreboard players set @s rnF 1
execute unless entity @e[tag=rn7] run scoreboard players set @s rnG 1
execute unless entity @e[tag=rn8] run scoreboard players set @s rnH 1
execute unless entity @e[tag=rn9] run scoreboard players set @s rnI 1

kill @e[tag=rn_rng]
