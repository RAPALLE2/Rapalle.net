
advancement revoke @s only amongus:lowfuel

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s low.fill

scoreboard players set @s low.fill 0

function amongus:tasks/fuel/low/empty

scoreboard players set @s low.fuel.0 0
scoreboard players reset @s low.fuel.1
scoreboard players set @s low.fuel 0
