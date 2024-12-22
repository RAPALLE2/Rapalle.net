
function amongus:particle/meet/kill

function amongus:display/hide

function amongus:game/sound/stop

execute as @a[tag=ingame] run scoreboard players set @s vote 0

execute as @e[tag=ingame] run clear @s

execute as @a[tag=ingame] run tag @s add print

execute as @a[tag=ingame] run title @s times 5 40 10
execute as @a[tag=ingame] run title @s title {"text":"Discuss!","color":"gold"}
execute as @a[tag=ingame] run title @s subtitle [""]

execute as @a[tag=ingame] unless entity @s[tag=ghost] run scoreboard players enable @s vote

scoreboard players set vote_init data 0

scoreboard players operation vote_timer data = vote_time settings

scoreboard players set vote_enable data 1

scoreboard players set vote_effects data 1

scoreboard players set print_vote data 1

scoreboard players set results_timer data 18

scoreboard players set preventWin data 1

scoreboard players reset @a[tag=ingame] report

kill @e[tag=DeadBody]

execute as @e[tag=ingame] unless entity @s[tag=ghost] run effect clear @s minecraft:invisibility
execute as @e[tag=ingame] unless entity @s[tag=ghost] run function amongus:inventory/notventing/player/alive/armor

function amongus:sabotage/disable
