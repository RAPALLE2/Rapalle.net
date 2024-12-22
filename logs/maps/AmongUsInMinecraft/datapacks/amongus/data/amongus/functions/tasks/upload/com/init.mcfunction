
advancement revoke @s only amongus:comupload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s upload.caf
scoreboard players reset @s upload.com
scoreboard players reset @s upload.elec
scoreboard players reset @s upload.nav
scoreboard players reset @s upload.weap

scoreboard players set @s upload.com 0

scoreboard players set ten upload.com 10

#bossbar add amongus:com.upload {"text":"Uploading Data...","color":"gold"}

#bossbar set amongus:com.upload color blue
#bossbar set amongus:com.upload style notched_10
#bossbar set amongus:com.upload max 1000
#bossbar set amongus:com.upload value 0

scoreboard players set @s com.upload.1 0

scoreboard players enable @s upload.com
function amongus:tasks/upload/com/a0
