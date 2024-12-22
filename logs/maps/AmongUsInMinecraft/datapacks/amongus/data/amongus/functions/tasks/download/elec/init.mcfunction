
advancement revoke @s only amongus:elecdownload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s download.elec

scoreboard players set @s download.elec 0

scoreboard players set ten download.elec 10

#bossbar add amongus:elec.download {"text":"Downloading Data...","color":"gold"}

#bossbar set amongus:elec.download color blue
#bossbar set amongus:elec.download style notched_10
#bossbar set amongus:elec.download max 1000
#bossbar set amongus:elec.download value 0

scoreboard players set @s elec.upload.0 0

scoreboard players reset @s elec.upload.1
scoreboard players set @s elec.upload 0

scoreboard players enable @s download.elec
function amongus:tasks/download/elec/a0
