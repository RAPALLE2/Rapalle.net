
advancement revoke @s only amongus:elecupload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s upload.caf
scoreboard players reset @s upload.com
scoreboard players reset @s upload.elec
scoreboard players reset @s upload.nav
scoreboard players reset @s upload.weap

scoreboard players set @s upload.elec 0

scoreboard players set ten upload.elec 10

#bossbar add amongus:elec.upload {"text":"Uploading Data...","color":"gold"}

#bossbar set amongus:elec.upload color blue
#bossbar set amongus:elec.upload style notched_10
#bossbar set amongus:elec.upload max 1000
#bossbar set amongus:elec.upload value 0

scoreboard players set @s elec.upload.1 0

scoreboard players enable @s upload.elec
function amongus:tasks/upload/elec/a0
