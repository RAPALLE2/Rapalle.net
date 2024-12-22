
scoreboard players set numA rng 0
scoreboard players set numB rng 0
scoreboard players set numC rng 0
scoreboard players set numD rng 0
scoreboard players set numE rng 0
scoreboard players set numF rng 0
scoreboard players set numG rng 0
scoreboard players set numH rng 0
scoreboard players set numI rng 0
scoreboard players set numJ rng 0

scoreboard players set num1 rng 0
scoreboard players set num2 rng 0
scoreboard players set num3 rng 0
scoreboard players set num4 rng 0
scoreboard players set num5 rng 0
scoreboard players set num6 rng 0
scoreboard players set num7 rng 0
scoreboard players set num8 rng 0
scoreboard players set num9 rng 0
scoreboard players set num10 rng 0

summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg1"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg2"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg3"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg4"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg5"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg6"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg7"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg8"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg9"]}
summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["rg_rng","rg10"]}


kill @e[tag=rg_rng,sort=random,limit=1]

execute unless entity @e[tag=rg1] run scoreboard players set numA rng 1
execute unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute unless entity @e[tag=rg2] run scoreboard players set numA rng 2
execute unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute unless entity @e[tag=rg3] run scoreboard players set numA rng 3
execute unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute unless entity @e[tag=rg4] run scoreboard players set numA rng 4
execute unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute unless entity @e[tag=rg5] run scoreboard players set numA rng 5
execute unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute unless entity @e[tag=rg6] run scoreboard players set numA rng 6
execute unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute unless entity @e[tag=rg7] run scoreboard players set numA rng 7
execute unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute unless entity @e[tag=rg8] run scoreboard players set numA rng 8
execute unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute unless entity @e[tag=rg9] run scoreboard players set numA rng 9
execute unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute unless entity @e[tag=rg10] run scoreboard players set numA rng 10
execute unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numB rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numB rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numB rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numB rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numB rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numB rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numB rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numB rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numB rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numB rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numC rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numC rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numC rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numC rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numC rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numC rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numC rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numC rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numC rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numC rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numD rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numD rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numD rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numD rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numD rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numD rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numD rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numD rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numD rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numD rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numE rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numE rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numE rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numE rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numE rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numE rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numE rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numE rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numE rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numE rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numF rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numF rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numF rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numF rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numF rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numF rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numF rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numF rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numF rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numF rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numG rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numG rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numG rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numG rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numG rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numG rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numG rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numG rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numG rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numG rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numH rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numH rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numH rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numH rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numH rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numH rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numH rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numH rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numH rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numH rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numI rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numI rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numI rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numI rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numI rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numI rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numI rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numI rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numI rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numI rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

kill @e[tag=rg_rng,sort=random,limit=1]

execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set numJ rng 1
execute if score num1 rng matches 0 unless entity @e[tag=rg1] run scoreboard players set num1 rng 1
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set numJ rng 2
execute if score num2 rng matches 0 unless entity @e[tag=rg2] run scoreboard players set num2 rng 2
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set numJ rng 3
execute if score num3 rng matches 0 unless entity @e[tag=rg3] run scoreboard players set num3 rng 3
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set numJ rng 4
execute if score num4 rng matches 0 unless entity @e[tag=rg4] run scoreboard players set num4 rng 4
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set numJ rng 5
execute if score num5 rng matches 0 unless entity @e[tag=rg5] run scoreboard players set num5 rng 5
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set numJ rng 6
execute if score num6 rng matches 0 unless entity @e[tag=rg6] run scoreboard players set num6 rng 6
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set numJ rng 7
execute if score num7 rng matches 0 unless entity @e[tag=rg7] run scoreboard players set num7 rng 7
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set numJ rng 8
execute if score num8 rng matches 0 unless entity @e[tag=rg8] run scoreboard players set num8 rng 8
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set numJ rng 9
execute if score num9 rng matches 0 unless entity @e[tag=rg9] run scoreboard players set num9 rng 9
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set numJ rng 10
execute if score num10 rng matches 0 unless entity @e[tag=rg10] run scoreboard players set num10 rng 10

scoreboard players operation @s rnA = numA rng
scoreboard players operation @s rnB = numB rng
scoreboard players operation @s rnC = numC rng
scoreboard players operation @s rnD = numD rng
scoreboard players operation @s rnE = numE rng
scoreboard players operation @s rnF = numF rng
scoreboard players operation @s rnG = numG rng
scoreboard players operation @s rnH = numH rng
scoreboard players operation @s rnI = numI rng
scoreboard players operation @s rnJ = numJ rng

kill @e[tag=rg_rng]
