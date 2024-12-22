
scoreboard players set preventWin data 1

function amongus:display/hide

tag @s add initiator

function amongus:game/sound/stop

scoreboard players remove @s meetings.num 1

function amongus:start/spread_to_cafeteria

clear @a[tag=ingame]

effect give @a[tag=ingame] minecraft:blindness 4 255 true
effect give @a[tag=ingame] minecraft:slowness 4 255 true

title @a[tag=ingame] times 5 55 5

title @a[tag=ingame] title {"text":"EMERGENCY MEETING"}
title @a[tag=ingame] subtitle ["",{"text":"called by "},{"selector":"@s"}]

execute as @a[tag=ingame] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 100 1
function amongus:particle/meet/kill
schedule function amongus:vote/init 4s
function amongus:sabotage/disable
