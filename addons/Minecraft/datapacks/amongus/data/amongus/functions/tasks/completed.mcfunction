
title @s times 10 50 10

title @s title {"text":""}
title @s subtitle {"text":"Task completed!"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1

execute if predicate amongus:rng_0_02 run scoreboard players set @s rick 1
