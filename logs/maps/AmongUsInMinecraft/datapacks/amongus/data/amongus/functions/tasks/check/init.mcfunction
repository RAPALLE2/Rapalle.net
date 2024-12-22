
execute store result score @s rotation0 run data get entity @s Rotation[0]
execute store result score @s rotation1 run data get entity @s Rotation[1]

execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posY run data get entity @s Pos[1]
execute store result score @s posZ run data get entity @s Pos[2]

scoreboard players set @s busy 0

scoreboard players set @s check 1
