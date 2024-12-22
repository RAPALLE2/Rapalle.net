
scoreboard players operation caf_old pos = caf pos

kill @e[type=minecraft:armor_stand,tag=adm.map.caf]
### 1 player
execute if score caf pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.caf","adm.map.caf.1"]}
execute if score caf pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.caf.1] ^0.1 ^-2.3 ^1.5

### 2 player
execute if score caf pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.caf","adm.map.caf.2"]}
execute if score caf pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.caf.2] ^0.2 ^-2.3 ^1.4

### 3 player
execute if score caf pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.caf","adm.map.caf.3"]}
execute if score caf pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.caf.3] ^0 ^-2.3 ^1.4

### 4 player
execute if score caf pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.caf","adm.map.caf.4"]}
execute if score caf pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.caf.4] ^0.1 ^-2.3 ^1.4

### 5 player
execute if score caf pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.caf","adm.map.caf.5"]}
execute if score caf pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.caf.5] ^0.1 ^-2.3 ^1.3
