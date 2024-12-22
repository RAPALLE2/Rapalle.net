
scoreboard players operation adm_old pos = adm pos

kill @e[type=minecraft:armor_stand,tag=adm.map.adm]

### 1 player
execute if score adm pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.adm","adm.map.adm.1"]}
execute if score adm pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.adm.1] ^-0.2 ^-2.3 ^0.7

### 2 player
execute if score adm pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.adm","adm.map.adm.2"]}
execute if score adm pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.adm.2] ^-0.1 ^-2.3 ^0.7

### 3 player
execute if score adm pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.adm","adm.map.adm.3"]}
execute if score adm pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.adm.3] ^-0.3 ^-2.3 ^0.7

### 4 player
execute if score adm pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.adm","adm.map.adm.4"]}
execute if score adm pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.adm.4] ^-0.15 ^-2.3 ^0.9

### 5 player
execute if score adm pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.adm","adm.map.adm.5"]}
execute if score adm pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.adm.5] ^-0.25 ^-2.3 ^0.9
