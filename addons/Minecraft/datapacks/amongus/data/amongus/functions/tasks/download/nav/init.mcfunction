
advancement revoke @s only amongus:navdownload

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s download.nav

scoreboard players set @s download.nav 0

scoreboard players set ten download.nav 10

#bossbar add amongus:nav.download {"text":"Downloading Data...","color":"gold"}

#bossbar set amongus:nav.download color blue
#bossbar set amongus:nav.download style notched_10
#bossbar set amongus:nav.download max 1000
#bossbar set amongus:nav.download value 0

scoreboard players set @s nav.upload.0 0
scoreboard players reset @s nav.upload.1
scoreboard players set @s nav.upload 0

scoreboard players enable @s download.nav
function amongus:tasks/download/nav/a0
