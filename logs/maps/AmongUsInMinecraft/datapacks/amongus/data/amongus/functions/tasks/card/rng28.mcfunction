
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn1"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn2"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn3"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn4"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn5"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn6"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn7"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn8"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn9"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn10"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn11"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn12"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn13"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn14"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn15"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn16"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn17"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn18"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn19"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn20"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn21"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn22"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn23"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn24"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn25"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn26"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn27"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn28"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn29"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rn_rng","rn30"]}

kill @e[tag=rn_rng,sort=random,limit=1]

execute unless entity @e[tag=rn1] run scoreboard players set @s card1 5
execute unless entity @e[tag=rn2] run scoreboard players set @s card2 5
execute unless entity @e[tag=rn3] run scoreboard players set @s card3 5
execute unless entity @e[tag=rn4] run scoreboard players set @s card4 5
execute unless entity @e[tag=rn5] run scoreboard players set @s card5 5
execute unless entity @e[tag=rn6] run scoreboard players set @s card6 5
execute unless entity @e[tag=rn7] run scoreboard players set @s card7 5
execute unless entity @e[tag=rn8] run scoreboard players set @s card8 5
execute unless entity @e[tag=rn9] run scoreboard players set @s card9 5
execute unless entity @e[tag=rn10] run scoreboard players set @s card10 5
execute unless entity @e[tag=rn11] run scoreboard players set @s card11 5
execute unless entity @e[tag=rn12] run scoreboard players set @s card12 5
execute unless entity @e[tag=rn13] run scoreboard players set @s card13 5
execute unless entity @e[tag=rn14] run scoreboard players set @s card14 5
execute unless entity @e[tag=rn15] run scoreboard players set @s card15 5
execute unless entity @e[tag=rn16] run scoreboard players set @s card16 5
execute unless entity @e[tag=rn17] run scoreboard players set @s card17 5
execute unless entity @e[tag=rn18] run scoreboard players set @s card18 5
execute unless entity @e[tag=rn19] run scoreboard players set @s card19 5
execute unless entity @e[tag=rn20] run scoreboard players set @s card20 5
execute unless entity @e[tag=rn21] run scoreboard players set @s card21 5
execute unless entity @e[tag=rn22] run scoreboard players set @s card22 5
execute unless entity @e[tag=rn23] run scoreboard players set @s card23 5
execute unless entity @e[tag=rn24] run scoreboard players set @s card24 5
execute unless entity @e[tag=rn25] run scoreboard players set @s card25 5
execute unless entity @e[tag=rn26] run scoreboard players set @s card26 5
execute unless entity @e[tag=rn27] run scoreboard players set @s card27 5
execute unless entity @e[tag=rn28] run scoreboard players set @s card28 5

kill @e[tag=rn_rng]
