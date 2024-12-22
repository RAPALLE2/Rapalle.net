
scoreboard players operation elec_old pos = elec pos

kill @e[type=minecraft:armor_stand,tag=adm.map.elec]
### 1 player
execute if score elec pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.elec","adm.map.elec.1"]}
execute if score elec pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.elec.1] ^0.6425 ^-2.3 ^0.64

### 2 player
execute if score elec pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.elec","adm.map.elec.2"]}
execute if score elec pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.elec.2] ^0.705 ^-2.3 ^0.71

### 3 player
execute if score elec pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.elec","adm.map.elec.3"]}
execute if score elec pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.elec.3] ^0.58 ^-2.3 ^0.71

### 4 player
execute if score elec pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.elec","adm.map.elec.4"]}
execute if score elec pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.elec.4] ^0.705 ^-2.3 ^0.56

### 5 player
execute if score elec pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.elec","adm.map.elec.5"]}
execute if score elec pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.elec.5] ^0.58 ^-2.3 ^0.56
