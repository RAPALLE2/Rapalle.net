
advancement revoke @s only amongus:reacmanifolds

tag @s add busy

scoreboard players set @s busy 1

scoreboard players set @s reac.manifolds 0

scoreboard players reset @s failed.manifolds
scoreboard players reset @s manifoldsA
scoreboard players reset @s manifoldsB
scoreboard players reset @s manifoldsC
scoreboard players reset @s manifoldsD
scoreboard players reset @s manifoldsE
scoreboard players reset @s manifoldsF
scoreboard players reset @s manifoldsG
scoreboard players reset @s manifoldsH
scoreboard players reset @s manifoldsI
scoreboard players reset @s manifoldsJ


execute as @s run function amongus:tasks/rng10

scoreboard players set @s manifoldsA 0
scoreboard players enable @s manifoldsA

scoreboard players set @s failed.manifolds 0
scoreboard players enable @s failed.manifolds

function amongus:tasks/manifolds/canvas
