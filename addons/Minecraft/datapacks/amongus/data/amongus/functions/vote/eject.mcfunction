

#title @a[tag=ingame] subtitle ["",{"selector":"@e[tag=ejected]","color":"white"},{"text":" was ejected.","color":"white"}]
title @a[tag=ingame] title {"text":"","color":"white"}

### was ejected
execute if score result vote matches 1..10 if score confirm_ejects settings matches 0 run title @a[tag=ingame] subtitle ["",{"selector":"@e[tag=ejected]","color":"white"},{"text":" was ejected.","color":"white"}]

### skipped
execute if score result vote matches 11 run title @a[tag=ingame] subtitle ["",{"text":"Nobody was ejected. (Skipped)","color":"white"}]

### tie
execute if score result vote matches 0 run title @a[tag=ingame] subtitle ["",{"text":"Nobody was ejected. (Tie)","color":"white"}]

### was an Impostor
execute if score result vote matches 1..10 unless score result vote matches 11 if score confirm_ejects settings matches 1 as @e[tag=ejected] if entity @s[tag=impostor] run title @a[tag=ingame] subtitle ["",{"selector":"@e[tag=ejected]","color":"white"},{"text":" was an Impostor.","color":"white"}]

### was not an Impostor
execute if score result vote matches 1..10 unless score result vote matches 11 if score confirm_ejects settings matches 1 as @e[tag=ejected] if entity @s[tag=!impostor] run title @a[tag=ingame] subtitle ["",{"selector":"@e[tag=ejected]","color":"white"},{"text":" was not an Impostor.","color":"white"}]

scoreboard players set vote_effects data 0


effect clear @a[tag=ingame] minecraft:blindness
effect clear @a[tag=ingame] minecraft:slowness

effect give @e[tag=ingame] minecraft:invisibility 999999 255 true

effect give @a[tag=ingame] minecraft:blindness 6 255 true
effect give @a[tag=ingame] minecraft:slowness 6 255 true

schedule function amongus:display/show 6s

execute as @e[tag=ejected] run tag @s add ghost
execute as @e[tag=ejected] run tag @s remove ejected

scoreboard players remove results_timer data 1

scoreboard players operation emerg_cd data = emerg_cd settings

scoreboard players reset @a[tag=ingame] vote

scoreboard players reset ongoing sabotage
scoreboard players reset cooldown sabotage
