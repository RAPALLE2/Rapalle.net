
advancement revoke @s only amongus:medsample

tag @s add busy

tag @s add inspectSample

scoreboard players set @s busy 1

execute unless score @s start.sample matches 1 run scoreboard players set @s timer.sample 60
execute unless score @s start.sample matches 1 run scoreboard players set @s start.sample 0
execute unless score @s start.sample matches 1 run scoreboard players enable @s start.sample

execute unless score @s start.sample matches 1 run function amongus:tasks/sample/start

scoreboard players set @s med.sample 0
