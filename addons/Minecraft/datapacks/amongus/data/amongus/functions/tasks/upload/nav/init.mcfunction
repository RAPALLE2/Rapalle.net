
advancement revoke @s only amongus:navupload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s upload.caf
scoreboard players reset @s upload.com
scoreboard players reset @s upload.elec
scoreboard players reset @s upload.nav
scoreboard players reset @s upload.weap

scoreboard players set @s upload.nav 0

scoreboard players set ten upload.nav 10

#bossbar add amongus:nav.upload {"text":"Uploading Data...","color":"gold"}

#bossbar set amongus:nav.upload color blue
#bossbar set amongus:nav.upload style notched_10
#bossbar set amongus:nav.upload max 1000
#bossbar set amongus:nav.upload value 0

scoreboard players set @s nav.upload.1 0

scoreboard players enable @s upload.nav
function amongus:tasks/upload/nav/a0
