
advancement revoke @s only amongus:cafupload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s upload.caf
scoreboard players reset @s upload.com
scoreboard players reset @s upload.elec
scoreboard players reset @s upload.nav
scoreboard players reset @s upload.weap

scoreboard players set @s upload.caf 0

scoreboard players set ten upload.caf 10

#bossbar add amongus:caf.upload {"text":"Uploading Data...","color":"gold"}

#bossbar set amongus:caf.upload color blue
#bossbar set amongus:caf.upload style notched_10
#bossbar set amongus:caf.upload max 1000
#bossbar set amongus:caf.upload value 0

scoreboard players set @s caf.upload.1 0

scoreboard players enable @s upload.caf
function amongus:tasks/upload/caf/a0
