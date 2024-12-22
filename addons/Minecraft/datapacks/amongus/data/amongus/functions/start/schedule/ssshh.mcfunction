
title @a[tag=ingame] times 0 250 0
title @a[tag=ingame] subtitle {"text":"SHHHHHHH !","bold":true,"italic":true,"color":"white"}
title @a[tag=ingame] title ""

execute as @a[tag=ingame] at @s run playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 100 1
