
scoreboard players set weap pos 0
scoreboard players set up pos 0
scoreboard players set caf pos 0
scoreboard players set med pos 0
scoreboard players set reac pos 0
scoreboard players set o2 pos 0
scoreboard players set nav pos 0
scoreboard players set sec pos 0
scoreboard players set adm pos 0
scoreboard players set elec pos 0
scoreboard players set low pos 0
scoreboard players set shld pos 0
scoreboard players set strg pos 0
scoreboard players set com pos 0

execute as @e[scores={pos=1}] unless entity @s[tag=ghost] run scoreboard players add weap pos 1
execute as @e[scores={pos=2}] unless entity @s[tag=ghost] run scoreboard players add up pos 1
execute as @e[scores={pos=4}] unless entity @s[tag=ghost] run scoreboard players add caf pos 1
execute as @e[scores={pos=6}] unless entity @s[tag=ghost] run scoreboard players add med pos 1
execute as @e[scores={pos=8}] unless entity @s[tag=ghost] run scoreboard players add reac pos 1
execute as @e[scores={pos=9}] unless entity @s[tag=ghost] run scoreboard players add o2 pos 1
execute as @e[scores={pos=10}] unless entity @s[tag=ghost] run scoreboard players add nav pos 1
execute as @e[scores={pos=12}] unless entity @s[tag=ghost] run scoreboard players add sec pos 1
execute as @e[scores={pos=15}] unless entity @s[tag=ghost] run scoreboard players add adm pos 1
execute as @e[scores={pos=16}] unless entity @s[tag=ghost] run scoreboard players add elec pos 1
execute as @e[scores={pos=17}] unless entity @s[tag=ghost] run scoreboard players add low pos 1
execute as @e[scores={pos=19}] unless entity @s[tag=ghost] run scoreboard players add shld pos 1
execute as @e[scores={pos=20}] unless entity @s[tag=ghost] run scoreboard players add strg pos 1
execute as @e[scores={pos=22}] unless entity @s[tag=ghost] run scoreboard players add com pos 1

execute if score weap pos matches 1.. unless score weap_old pos = adm pos run function amongus:adm/display/weap
execute if score up pos matches 1.. unless score up_old pos = adm pos run function amongus:adm/display/up
execute if score caf pos matches 1.. unless score caf_old pos = adm pos run function amongus:adm/display/caf
execute if score med pos matches 1.. unless score med_old pos = adm pos run function amongus:adm/display/med
execute if score reac pos matches 1.. unless score reac_old pos = adm pos run function amongus:adm/display/reac
execute if score o2 pos matches 1.. unless score o2_old pos = adm pos run function amongus:adm/display/o2
execute if score nav pos matches 1.. unless score nav_old pos = adm pos run function amongus:adm/display/nav
execute if score sec pos matches 1.. unless score sec_old pos = adm pos run function amongus:adm/display/sec
execute if score adm pos matches 1.. unless score adm_old pos = adm pos run function amongus:adm/display/adm
execute if score elec pos matches 1.. unless score elec_old pos = adm pos run function amongus:adm/display/elec
execute if score low pos matches 1.. unless score low_old pos = adm pos run function amongus:adm/display/low
execute if score shld pos matches 1.. unless score shld_old pos = adm pos run function amongus:adm/display/shld
execute if score strg pos matches 1.. unless score strg_old pos = adm pos run function amongus:adm/display/strg
execute if score com pos matches 1.. unless score com_old pos = adm pos run function amongus:adm/display/com

execute if score weap pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.weap]
execute if score up pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.up]
execute if score caf pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.caf]
execute if score med pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.med]
execute if score reac pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.reac]
execute if score o2 pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.o2]
execute if score nav pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.nav]
execute if score sec pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.sec]
execute if score adm pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.adm]
execute if score elec pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.elec]
execute if score low pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.low]
execute if score shld pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.shld]
execute if score strg pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.strg]
execute if score com pos matches 0 run kill @e[type=minecraft:armor_stand,tag=adm.map.com]
