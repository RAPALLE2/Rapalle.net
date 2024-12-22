
scoreboard players operation reac_old pos = reac pos

kill @e[type=minecraft:armor_stand,tag=adm.map.reac]
### 1 player
execute if score reac pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.reac","adm.map.reac.1"]}
execute if score reac pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.reac.1] ^1.58 ^-2.3 ^1.08

### 2 player
execute if score reac pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.reac","adm.map.reac.2"]}
execute if score reac pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.reac.2] ^1.48 ^-2.3 ^1.08

### 3 player
execute if score reac pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.reac","adm.map.reac.3"]}
execute if score reac pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.reac.3] ^1.53 ^-2.3 ^1.18

### 4 player
execute if score reac pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.reac","adm.map.reac.4"]}
execute if score reac pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.reac.4] ^1.58 ^-2.3 ^0.9

### 5 player
execute if score reac pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.reac","adm.map.reac.5"]}
execute if score reac pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.reac.5] ^1.48 ^-2.3 ^0.9
