
scoreboard players operation up_old pos = up pos

kill @e[type=minecraft:armor_stand,tag=adm.map.up]
### 1 player
execute if score up pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.up","adm.map.up.1"]}
execute if score up pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.up.1] ^1.21 ^-2.3 ^1.27

### 2 player
execute if score up pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.up","adm.map.up.2"]}
execute if score up pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.up.2] ^1.28 ^-2.3 ^1.27

### 3 player
execute if score up pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.up","adm.map.up.3"]}
execute if score up pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.up.3] ^1.14 ^-2.3 ^1.27

### 4 player
execute if score up pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.up","adm.map.up.4"]}
execute if score up pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.up.4] ^1.21 ^-2.3 ^1.52

### 5 player
execute if score up pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.up","adm.map.up.5"]}
execute if score up pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.up.5] ^1.14 ^-2.3 ^1.52
