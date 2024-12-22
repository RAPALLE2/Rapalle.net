
execute as @e[tag=joined] run tag @s add ingame

execute as @e[tag=ingame] run tag @s remove joined

title @a[tag=ingame] title {"text":""}
title @a[tag=ingame] subtitle {"text":""}
title @a[tag=ingame] actionbar {"text":""}
tellraw @a[tag=ingame] ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

stopsound @a[tag=ingame]

execute as @a[tag=ingame] run clear @s

function amongus:start/impostors

execute as @e[tag=ingame] unless entity @s[tag=impostor] run tag @s add crewmate

execute as @e[tag=ingame] run scoreboard players set @s color 0
scoreboard players set current_color color 0
function amongus:start/color

function amongus:display/teams/main

team empty lobby

bossbar remove amongus:lobby_display

function amongus:start/team

effect clear @a[tag=ingame]

effect give @a[tag=ingame] minecraft:resistance 999999 255 true
effect give @a[tag=ingame] minecraft:jump_boost 999999 130 true
effect give @a[tag=ingame] minecraft:invisibility 999999 255 true
effect give @a[tag=ingame] minecraft:weakness 999999 255 true
effect give @a[tag=ingame] minecraft:blindness 10 255 true
effect give @a[tag=ingame] minecraft:slowness 10 255 true

execute as @a[tag=ingame] run tp @s 32 118 32 -5 5

function amongus:start/tasks/schedule
schedule function amongus:start/schedule/ssshh 1s
schedule function amongus:start/schedule/main 5s
schedule function amongus:build/tasks_map 7s
schedule function amongus:build/decor 6s
schedule function amongus:start/schedule/end 10s
schedule function amongus:display/show 10s
schedule function amongus:lobby/signs/spectateb 10s
schedule function amongus:game/sound/ambient 8s

scoreboard players add game_start data 1
