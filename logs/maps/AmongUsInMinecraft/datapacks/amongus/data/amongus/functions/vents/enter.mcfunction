
clear @s

execute positioned 41 20 41 if entity @s[distance=..1] run function amongus:vents/caf/init
execute positioned 21 20 26 if entity @s[distance=..1] run function amongus:vents/cor/init
execute positioned 46 20 17 if entity @s[distance=..1] run function amongus:vents/adm/init
execute positioned 76 20 26 if entity @s[distance=..1] run function amongus:vents/elec/init
execute positioned 86 20 12 if entity @s[distance=..1] run function amongus:vents/low/init
execute positioned 76 20 35 if entity @s[distance=..1] run function amongus:vents/med/init
execute positioned 9 20 32 if entity @s[distance=..1] run function amongus:vents/nava/init
execute positioned 9 20 25 if entity @s[distance=..1] run function amongus:vents/navb/init
execute positioned 103 20 38 if entity @s[distance=..1] run function amongus:vents/reaca/init
execute positioned 99 20 29 if entity @s[distance=..1] run function amongus:vents/reacb/init
execute positioned 81 20 30 if entity @s[distance=..1] run function amongus:vents/sec/init
execute positioned 20 20 6 if entity @s[distance=..1] run function amongus:vents/shld/init
execute positioned 86 20 50 if entity @s[distance=..1] run function amongus:vents/up/init
execute positioned 24 20 52 if entity @s[distance=..1] run function amongus:vents/weap/init

scoreboard players reset @s vent.enter
