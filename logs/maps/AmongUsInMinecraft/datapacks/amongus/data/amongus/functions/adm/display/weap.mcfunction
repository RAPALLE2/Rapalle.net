
scoreboard players operation weap_old pos = weap pos

kill @e[type=minecraft:armor_stand,tag=adm.map.weap]
### weapons 1 player
execute if score weap pos matches 1.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.weap","adm.map.weap.1"]}
execute if score weap pos matches 1.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.weap.1] ^-0.55 ^-2.3 ^1.45

### weapons 2 player
execute if score weap pos matches 2.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.weap","adm.map.weap.2"]}
execute if score weap pos matches 2.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.weap.2] ^-0.5 ^-2.3 ^1.35

### weapons 3 player
execute if score weap pos matches 3.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.weap","adm.map.weap.3"]}
execute if score weap pos matches 3.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.weap.3] ^-0.6 ^-2.3 ^1.35

### weapons 4 player
execute if score weap pos matches 4.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.weap","adm.map.weap.4"]}
execute if score weap pos matches 4.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.weap.4] ^-0.5 ^-2.3 ^1.55

### weapons 5 player
execute if score weap pos matches 5.. run summon armor_stand ^ ^-3 ^1 {Marker:1b,Invisible:1b,Rotation:[-90F,0F],Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"spectral_arrow",Count:1b}],HandItems:[{},{}],Pose:{Head:[273f,45f,269f]},Tags:["adm.map.weap","adm.map.weap.5"]}
execute if score weap pos matches 5.. run tp @e[type=armor_stand,sort=nearest,limit=1,tag=adm.map.weap.5] ^-0.6 ^-2.3 ^1.55
