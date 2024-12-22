
scoreboard players operation strg_old pos = strg pos

kill @e[type=minecraft:armor_stand,tag=adm.map.strg]
### 1 player
execute if score strg pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.strg","adm.map.strg.1"]}
execute if score strg pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.strg.1] ^0.18 ^-2.3 ^0.45

### 2 player
execute if score strg pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.strg","adm.map.strg.2"]}
execute if score strg pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.strg.2] ^0.28 ^-2.3 ^0.35

### 3 player
execute if score strg pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.strg","adm.map.strg.3"]}
execute if score strg pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.strg.3] ^0.08 ^-2.3 ^0.35

### 4 player
execute if score strg pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.strg","adm.map.strg.4"]}
execute if score strg pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.strg.4] ^0.18 ^-2.3 ^0.35

### 5 player
execute if score strg pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.strg","adm.map.strg.5"]}
execute if score strg pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.strg.5] ^0.18 ^-2.3 ^0.25
