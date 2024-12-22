
scoreboard players set 0 cams 0
scoreboard players set 3 cams 3
scoreboard players set 6 cams 6
scoreboard players set 7 cams 7
scoreboard players set 8 cams 8
scoreboard players set 10 cams 10
scoreboard players set 11 cams 11
scoreboard players set 12 cams 12
scoreboard players set 97 cams 97
scoreboard players set 100 cams 100


execute if entity @a[scores={pos=11}] as @a[tag=ingame,tag=!ghost,scores={pos=11}] run function amongus:cams/reac/main
execute if entity @a[scores={pos=3}] as @a[tag=ingame,tag=!ghost,scores={pos=3}] run function amongus:cams/med/main
execute if entity @a[scores={pos=13}] as @a[tag=ingame,tag=!ghost,scores={pos=13}] run function amongus:cams/adm/main
execute if entity @a[scores={pos=7}] as @a[tag=ingame,tag=!ghost,tag=!venting,scores={pos=7}] run function amongus:cams/nav/main
execute if entity @a[scores={pos=14}] as @a[tag=ingame,tag=!ghost,tag=!venting,scores={pos=14}] run function amongus:cams/nav/main
