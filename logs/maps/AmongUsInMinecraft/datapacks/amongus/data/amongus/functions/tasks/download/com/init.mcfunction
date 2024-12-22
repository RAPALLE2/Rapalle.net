
advancement revoke @s only amongus:comdownload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s download.com

scoreboard players set @s download.com 0

scoreboard players set ten download.com 10

#bossbar add amongus:com.download {"text":"Downloading Data...","color":"gold"}

#bossbar set amongus:com.download color blue
#bossbar set amongus:com.download style notched_10
#bossbar set amongus:com.download max 1000
#bossbar set amongus:com.download value 0

scoreboard players set @s com.upload.0 0

scoreboard players reset @s com.upload.1
scoreboard players set @s com.upload 0

scoreboard players enable @s download.com
function amongus:tasks/download/com/a0
