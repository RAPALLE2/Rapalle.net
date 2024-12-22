
advancement revoke @s only amongus:cafdownload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s download.caf

scoreboard players set @s download.caf 0

scoreboard players set ten download.caf 10

#bossbar add amongus:caf.download {"text":"Downloading Data...","color":"gold"}

#bossbar set amongus:caf.download color blue
#bossbar set amongus:caf.download style notched_10
#bossbar set amongus:caf.download max 1000
#bossbar set amongus:caf.download value 0

scoreboard players set @s caf.upload.0 0
scoreboard players reset @s caf.upload.1
scoreboard players set @s caf.upload 0

scoreboard players enable @s download.caf
function amongus:tasks/download/caf/a0
