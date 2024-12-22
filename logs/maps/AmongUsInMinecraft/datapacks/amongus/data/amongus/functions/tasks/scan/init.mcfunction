
#advancement revoke @s only amongus:medscan

tag @s add busy

tag @s add scan.used

scoreboard players set @s med.scan 0

scoreboard players set @s busy 1

scoreboard players reset @s scan.timer

scoreboard players set @s scan.timer 1

execute as @s at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["med.scanner"]}

bossbar add tasks:scan ["",{"text":"S","color":"red"},{"text":"CAN-MO-TRONN-2000","color":"white"}]

bossbar set tasks:scan style progress
bossbar set tasks:scan color green
bossbar set tasks:scan max 200
bossbar set tasks:scan value 0
bossbar set tasks:scan players @s
