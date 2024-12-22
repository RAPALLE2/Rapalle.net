
scoreboard players add @s kill 1

scoreboard players set @s kill_cd 0

scoreboard players set minus_one kill -1

scoreboard players set max_duarability kill 32

scoreboard players set hundred kill 100

scoreboard players operation @s kill_cd = @s kill

scoreboard players operation @s kill_cd *= minus_one kill

scoreboard players operation @s kill_cd *= hundred kill

scoreboard players operation @s kill_cd /= kill_cd settings

scoreboard players operation @s kill_cd *= max_duarability kill

scoreboard players operation @s kill_cd /= hundred kill
