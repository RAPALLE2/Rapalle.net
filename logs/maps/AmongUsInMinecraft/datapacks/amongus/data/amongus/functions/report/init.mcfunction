
execute as @e[tag=DeadBody,distance=..3,limit=1,sort=nearest] run tag @s add selectedBody

scoreboard players set meeting report 0

scoreboard players set preventWin data 1

execute as @e[tag=selectedBody,tag=color1] run scoreboard players set meeting report 1
execute as @e[tag=selectedBody,tag=color2] run scoreboard players set meeting report 2
execute as @e[tag=selectedBody,tag=color3] run scoreboard players set meeting report 3
execute as @e[tag=selectedBody,tag=color4] run scoreboard players set meeting report 4
execute as @e[tag=selectedBody,tag=color5] run scoreboard players set meeting report 5
execute as @e[tag=selectedBody,tag=color6] run scoreboard players set meeting report 6
execute as @e[tag=selectedBody,tag=color7] run scoreboard players set meeting report 7
execute as @e[tag=selectedBody,tag=color8] run scoreboard players set meeting report 8
execute as @e[tag=selectedBody,tag=color9] run scoreboard players set meeting report 9
execute as @e[tag=selectedBody,tag=color10] run scoreboard players set meeting report 10

execute as @a[scores={report=1..},limit=1] run tag @s add initiator

function amongus:game/sound/stop

scoreboard players reset @e report

function amongus:start/spread_to_cafeteria

function amongus:sound/report

clear @a[tag=ingame]

effect give @a[tag=ingame] minecraft:blindness 4 255 true
effect give @a[tag=ingame] minecraft:slowness 4 255 true

function amongus:report/message

scoreboard players set @a[tag=initiator] report -5

function amongus:sabotage/disable

function amongus:particle/meet/kill
