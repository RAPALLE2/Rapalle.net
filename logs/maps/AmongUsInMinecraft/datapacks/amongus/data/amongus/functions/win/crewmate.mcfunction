
title @a[tag=ingame] times 10 55 10

title @a[tag=crewmate] title {"text":"Victory","color":"dark_aqua"}
title @a[tag=impostor] title {"text":"Defeat","color":"dark_red"}

execute as @a[tag=crewmate] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100
execute as @a[tag=impostor] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100
