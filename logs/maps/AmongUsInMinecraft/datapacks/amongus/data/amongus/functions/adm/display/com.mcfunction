
scoreboard players operation com_old pos = com pos

kill @e[type=minecraft:armor_stand,tag=adm.map.com]
### 1 player
execute if score com pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.com","adm.map.com.1"]}
execute if score com pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.com.1] ^-0.2 ^-2.3 ^0.23

### 2 player
execute if score com pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.com","adm.map.com.2"]}
execute if score com pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.com.2] ^-0.1 ^-2.3 ^0.23

### 3 player
execute if score com pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.com","adm.map.com.3"]}
execute if score com pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.com.3] ^-0.3 ^-2.3 ^0.23

### 4 player
execute if score com pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.com","adm.map.com.4"]}
execute if score com pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.com.4] ^-0.15 ^-2.3 ^0.38

### 5 player
execute if score com pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.com","adm.map.com.5"]}
execute if score com pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.com.5] ^-0.25 ^-2.3 ^0.38
