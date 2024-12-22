
function amongus:game/sound/stop

tp @a[tag=ingame] 50 117 32 180 -6

execute if score crewmateWin data matches 1 run function amongus:win/crewmate
execute if score impostorWin data matches 1 run function amongus:win/impostor

tellraw @a ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

tellraw @a ["",{"text":"Impostor:","color":"#FF0000"},{"text":"\n"},{"selector":"@e[tag=impostor]"},{"text":"\n"},{"text":"\n"},{"text":"Crewmate:","color":"aqua"},{"text":"\n"},{"selector":"@e[tag=crewmate]"},{"text":"\n"},{"text":"\n"}]

clear @a[tag=ingame]

kill @e[type=!player]

function amongus:reset

effect give @a minecraft:night_vision 999999 255 true
