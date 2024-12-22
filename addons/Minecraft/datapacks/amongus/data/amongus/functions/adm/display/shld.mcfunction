
scoreboard players operation shld_old pos = shld pos

kill @e[type=minecraft:armor_stand,tag=adm.map.shld]
### 1 player
execute if score shld pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.shld","adm.map.shld.1"]}
execute if score shld pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.shld.1] ^-0.6 ^-2.3 ^0.45

### 2 player
execute if score shld pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.shld","adm.map.shld.2"]}
execute if score shld pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.shld.2] ^-0.45 ^-2.3 ^0.45

### 3 player
execute if score shld pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.shld","adm.map.shld.3"]}
execute if score shld pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.shld.3] ^-0.52 ^-2.3 ^0.39

### 4 player
execute if score shld pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.shld","adm.map.shld.4"]}
execute if score shld pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.shld.4] ^-0.52 ^-2.3 ^0.63

### 5 player
execute if score shld pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.shld","adm.map.shld.5"]}
execute if score shld pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.shld.5] ^-0.6 ^-2.3 ^0.63
