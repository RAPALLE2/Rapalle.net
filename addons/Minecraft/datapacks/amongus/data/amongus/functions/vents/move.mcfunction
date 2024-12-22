execute if entity @s[tag=ventCaf] unless entity @s[tag=ventMoved] run function amongus:vents/caf/move
execute if entity @s[tag=ventCor] unless entity @s[tag=ventMoved] run function amongus:vents/cor/move
execute if entity @s[tag=ventAdm] unless entity @s[tag=ventMoved] run function amongus:vents/adm/move
execute if entity @s[tag=ventWeap] unless entity @s[tag=ventMoved] run function amongus:vents/weap/move
execute if entity @s[tag=ventNavA] unless entity @s[tag=ventMoved] run function amongus:vents/nava/move
execute if entity @s[tag=ventNavB] unless entity @s[tag=ventMoved] run function amongus:vents/navb/move
execute if entity @s[tag=ventUp] unless entity @s[tag=ventMoved] run function amongus:vents/up/move
execute if entity @s[tag=ventLow] unless entity @s[tag=ventMoved] run function amongus:vents/low/move
execute if entity @s[tag=ventMed] unless entity @s[tag=ventMoved] run function amongus:vents/med/move
execute if entity @s[tag=ventReacA] unless entity @s[tag=ventMoved] run function amongus:vents/reaca/move
execute if entity @s[tag=ventReacB] unless entity @s[tag=ventMoved] run function amongus:vents/reacb/move
execute if entity @s[tag=ventElec] unless entity @s[tag=ventMoved] run function amongus:vents/elec/move
execute if entity @s[tag=ventSec] unless entity @s[tag=ventMoved] run function amongus:vents/sec/move
execute if entity @s[tag=ventShld] unless entity @s[tag=ventMoved] run function amongus:vents/shld/move

tag @s remove ventMoved
