
scoreboard players operation sec_old pos = sec pos

kill @e[type=minecraft:armor_stand,tag=adm.map.sec]
### 1 player
execute if score sec pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.sec","adm.map.sec.1"]}
execute if score sec pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.sec.1] ^0.935 ^-2.3 ^1.15

### 2 player
execute if score sec pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.sec","adm.map.sec.2"]}
execute if score sec pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.sec.2] ^0.99 ^-2.3 ^1.06

### 3 player
execute if score sec pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.sec","adm.map.sec.3"]}
execute if score sec pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.sec.3] ^0.88 ^-2.3 ^1.06

### 4 player
execute if score sec pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.sec","adm.map.sec.4"]}
execute if score sec pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.sec.4] ^0.99 ^-2.3 ^0.9

### 5 player
execute if score sec pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.sec","adm.map.sec.5"]}
execute if score sec pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.sec.5] ^0.88 ^-2.3 ^0.9
