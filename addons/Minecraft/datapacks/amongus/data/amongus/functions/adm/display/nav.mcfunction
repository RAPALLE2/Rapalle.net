
scoreboard players operation nav_old pos = nav pos

kill @e[type=minecraft:armor_stand,tag=adm.map.nav]
### 1 player
execute if score nav pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.nav","adm.map.nav.1"]}
execute if score nav pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.nav.1] ^-1 ^-2.3 ^1.15

### 2 player
execute if score nav pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.nav","adm.map.nav.2"]}
execute if score nav pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.nav.2] ^-1.1 ^-2.3 ^1.15

### 3 player
execute if score nav pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.nav","adm.map.nav.3"]}
execute if score nav pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.nav.3] ^-1 ^-2.3 ^0.95

### 4 player
execute if score nav pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.nav","adm.map.nav.4"]}
execute if score nav pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.nav.4] ^-1.1 ^-2.3 ^0.95

### 5 player
execute if score nav pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.nav","adm.map.nav.5"]}
execute if score nav pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.nav.5] ^-1.05 ^-2.3 ^1.05
