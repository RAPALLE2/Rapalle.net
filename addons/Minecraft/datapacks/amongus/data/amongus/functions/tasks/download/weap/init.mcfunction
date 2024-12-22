
advancement revoke @s only amongus:weapdownload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s download.weap

scoreboard players set @s download.weap 0

scoreboard players set ten download.weap 10

#bossbar add amongus:weap.download {"text":"Downloading Data...","color":"gold"}

#bossbar set amongus:weap.download color blue
#bossbar set amongus:weap.download style notched_10
#bossbar set amongus:weap.download max 1000
#bossbar set amongus:weap.download value 0

scoreboard players set @s weap.upload.0 0
scoreboard players reset @s weap.upload.1
scoreboard players set @s weap.upload 0

scoreboard players enable @s download.weap
function amongus:tasks/download/weap/a0
