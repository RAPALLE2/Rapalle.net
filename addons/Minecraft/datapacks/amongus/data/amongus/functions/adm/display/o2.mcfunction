
scoreboard players operation o2_old pos = o2 pos

kill @e[type=minecraft:armor_stand,tag=adm.map.o2]
### 1 player
execute if score o2 pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.o2","adm.map.o2.1"]}
execute if score o2 pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.o2.1] ^-0.30 ^-2.3 ^1.03

### 2 player
execute if score o2 pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.o2","adm.map.o2.2"]}
execute if score o2 pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.o2.2] ^-0.36 ^-2.3 ^1.03

### 3 player
execute if score o2 pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.o2","adm.map.o2.3"]}
execute if score o2 pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.o2.3] ^-0.24 ^-2.3 ^1.03

### 4 player
execute if score o2 pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.o2","adm.map.o2.4"]}
execute if score o2 pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.o2.4] ^-0.42 ^-2.3 ^1.03

### 5 player
execute if score o2 pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.o2","adm.map.o2.5"]}
execute if score o2 pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.o2.5] ^-0.42 ^-2.3 ^1.18
