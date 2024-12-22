
advancement revoke @s only amongus:weapupload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s upload.caf
scoreboard players reset @s upload.com
scoreboard players reset @s upload.elec
scoreboard players reset @s upload.nav
scoreboard players reset @s upload.weap

scoreboard players set @s upload.weap 0

scoreboard players set ten upload.weap 10

#bossbar add amongus:weap.upload {"text":"Uploading Data...","color":"gold"}

#bossbar set amongus:weap.upload color blue
#bossbar set amongus:weap.upload style notched_10
#bossbar set amongus:weap.upload max 1000
#bossbar set amongus:weap.upload value 0

scoreboard players set @s weap.upload.1 0

scoreboard players enable @s upload.weap
function amongus:tasks/upload/weap/a0
