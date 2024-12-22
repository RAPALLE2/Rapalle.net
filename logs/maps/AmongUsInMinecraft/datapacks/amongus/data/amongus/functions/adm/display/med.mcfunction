
scoreboard players operation med_old pos = med pos

kill @e[type=minecraft:armor_stand,tag=adm.map.med]
### 1 player
execute if score med pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.med","adm.map.med.1"]}
execute if score med pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.med.1] ^0.67 ^-2.3 ^1.18

### 2 player
execute if score med pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.med","adm.map.med.2"]}
execute if score med pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.med.2] ^0.72 ^-2.3 ^1.27

### 3 player
execute if score med pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.med","adm.map.med.3"]}
execute if score med pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.med.3] ^0.62 ^-2.3 ^1.27

### 4 player
execute if score med pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.med","adm.map.med.4"]}
execute if score med pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.med.4] ^0.72 ^-2.3 ^1.09

### 5 player
execute if score med pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.med","adm.map.med.5"]}
execute if score med pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.med.5] ^0.62 ^-2.3 ^1.09
