
function amongus:start/spread_to_cafeteria

title @a[tag=ingame] actionbar {"text":""}
title @a[tag=ingame] times 20 50 30
title @a[tag=crewmate] title {"text":"Crewmate","color":"aqua"}
execute if score impostor_count data matches 1 run title @a[tag=crewmate] subtitle ["",{"text":"There is ","color":"white"},{"text":"1 Impostor ","color":"#FB0006"},{"text":"among us","color":"white"}]
execute if score impostor_count data matches 2 run title @a[tag=crewmate] subtitle ["",{"text":"There are ","color":"white"},{"text":"2 Impostors ","color":"#FB0006"},{"text":"among us","color":"white"}]
execute if score impostor_count data matches 3 run title @a[tag=crewmate] subtitle ["",{"text":"There are ","color":"white"},{"text":"3 Impostors ","color":"#FB0006"},{"text":"among us","color":"white"}]

title @a[tag=impostor] title {"text":"Impostor","color":"#FB0006"}
title @a[tag=impostor] subtitle {"selector":"@e[tag=impostor]","color":"white"}

execute as @e[tag=impostor] run scoreboard players set @s kill -15

execute as @a[tag=ingame] run scoreboard players operation @s meetings.num = emerg_meets settings
scoreboard players operation emerg_cd data = emerg_cd settings
