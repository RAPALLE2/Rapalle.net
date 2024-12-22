
### determinate Position

execute as @s at @s run function amongus:game/pos

### Position
data modify storage tasks:player pos1 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos2 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos3 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos4 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos5 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos6 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos7 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos8 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos9 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos10 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos11 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos12 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos13 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos14 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos15 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos16 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos17 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos18 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos19 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos20 set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player pos21 set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player pos22 set value '{"text":"█","color":"#0C2EFF"}'

### Upload Data
data modify storage tasks:player adm.upload set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player caf.upload set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player com.upload set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player elec.upload set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player nav.upload set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player weap.upload set value '{"text":"█","color":"#0C2EFF"}'

### Unlock Manifolds
data modify storage tasks:player reac.manifolds set value '{"text":"█","color":"#0C2EFF"}'

### Swipe Card
data modify storage tasks:player adm.card set value '{"text":"█","color":"#0C2EFF"}'

### Submit Scan
data modify storage tasks:player med.scan set value '{"text":"█","color":"#0C2EFF"}'

### Start Reactor
data modify storage tasks:player reac.start set value '{"text":"█","color":"#0C2EFF"}'

### Stabilize Steering
data modify storage tasks:player nav.steering set value '{"text":"█","color":"#0C2EFF"}'

### Prime Shields
data modify storage tasks:player shld.prime set value '{"text":"█","color":"#0C2EFF"}'

### Inspect Sample
data modify storage tasks:player med.sample set value '{"text":"█","color":"#0C2EFF"}'

###Fuel Engines
data modify storage tasks:player low.fuel set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player up.fuel set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player strg.fuel set value '{"text":"█","color":"#0C2EFF"}'

###Empty Garbage/Chute
data modify storage tasks:player caf.garbage set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player o2.chute set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player strg.garbage set value '{"text":"█","color":"#0C2EFF"}'

### Divert Power
data modify storage tasks:player elec.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player com.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player low.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player nav.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player o2.power set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player weap.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player sec.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player shld.power set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player up.power set value '{"text":"█","color":"#0C2EFF"}'

### Clear Asteroids
data modify storage tasks:player weap.clear set value '{"text":"█","color":"#0C2EFF"}'

### Clean O2 Filter
data modify storage tasks:player o2.clean set value '{"text":"█","color":"#0C2EFF"}'

### Chart Course
data modify storage tasks:player nav.course set value '{"text":"█","color":"#0C2EFF"}'

### Calibrate Distributor
data modify storage tasks:player elec.calibrate set value '{"text":"█","color":"#0C2EFF"}'

### Align Engine Output
data modify storage tasks:player up.align set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player low.align set value '{"text":"█","color":"#0C2EFF"}'

### Fix Wiring
data modify storage tasks:player caf.fix set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player sec.fix set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player nav.fix set value '{"text":"█","color":"#A7B1E5"}'
data modify storage tasks:player elec.fix set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player adm.fix set value '{"text":"█","color":"#0C2EFF"}'
data modify storage tasks:player strg.fix set value '{"text":"█","color":"#0C2EFF"}'


######################################
### Position
execute if score @s pos matches 1 run data modify storage tasks:player pos1 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Weapons","color":"gold"}}}'
execute if score @s pos matches 2 run data modify storage tasks:player pos2 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Upper Engine","color":"gold"}}}'
execute if score @s pos matches 3 run data modify storage tasks:player pos3 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 4 run data modify storage tasks:player pos4 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Cafeteria","color":"gold"}}}'
execute if score @s pos matches 5 run data modify storage tasks:player pos5 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 6 run data modify storage tasks:player pos6 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Medbay","color":"gold"}}}'
execute if score @s pos matches 7 run data modify storage tasks:player pos7 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 8 run data modify storage tasks:player pos8 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Reactor","color":"gold"}}}'
execute if score @s pos matches 9 run data modify storage tasks:player pos9 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"O2","color":"gold"}}}'
execute if score @s pos matches 10 run data modify storage tasks:player pos10 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Navigation","color":"gold"}}}'
execute if score @s pos matches 11 run data modify storage tasks:player pos11 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 12 run data modify storage tasks:player pos12 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Security","color":"gold"}}}'
execute if score @s pos matches 13 run data modify storage tasks:player pos13 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 14 run data modify storage tasks:player pos14 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 15 run data modify storage tasks:player pos15 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Admin","color":"gold"}}}'
execute if score @s pos matches 16 run data modify storage tasks:player pos16 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Electrical","color":"gold"}}}'
execute if score @s pos matches 17 run data modify storage tasks:player pos17 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Lower Engine","color":"gold"}}}'
execute if score @s pos matches 18 run data modify storage tasks:player pos18 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 19 run data modify storage tasks:player pos19 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Shields","color":"gold"}}}'
execute if score @s pos matches 20 run data modify storage tasks:player pos20 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Storage","color":"gold"}}}'
execute if score @s pos matches 21 run data modify storage tasks:player pos21 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Corridor","color":"gold"}}}'
execute if score @s pos matches 22 run data modify storage tasks:player pos22 set value '{"text":"█","color":"#ff0000","hoverEvent":{"action":"show_text","contents":{"text":"Communications","color":"gold"}}}'


### change to yellow
### Upload Data
execute unless score comms sabotage matches 1 if score @s caf.upload.1 matches 0 run data modify storage tasks:player adm.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s com.upload.1 matches 0 run data modify storage tasks:player adm.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s elec.upload.1 matches 0 run data modify storage tasks:player adm.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s nav.upload.1 matches 0 run data modify storage tasks:player adm.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s weap.upload.1 matches 0 run data modify storage tasks:player adm.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s caf.upload.0 matches 0 run data modify storage tasks:player caf.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s com.upload.0 matches 0 run data modify storage tasks:player com.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s elec.upload.0 matches 0 run data modify storage tasks:player elec.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s nav.upload.0 matches 0 run data modify storage tasks:player nav.upload set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s weap.upload.0 matches 0 run data modify storage tasks:player weap.upload set value '{"text":"█","color":"#FFFF00"}'

### Unlock Manifolds
execute unless score comms sabotage matches 1 if score @s reac.manifolds matches 0 run data modify storage tasks:player reac.manifolds set value '{"text":"█","color":"#FFFF00"}'

### Swipe Card
execute unless score comms sabotage matches 1 if score @s adm.card matches 0 run data modify storage tasks:player adm.card set value '{"text":"█","color":"#FFFF00"}'

### Submit Scan
execute unless score comms sabotage matches 1 if score @s med.scan matches 0 run data modify storage tasks:player med.scan set value '{"text":"█","color":"#FFFF00"}'

### Start Reactor
execute unless score comms sabotage matches 1 if score @s reac.start matches 0 run data modify storage tasks:player reac.start set value '{"text":"█","color":"#FFFF00"}'

### Stabilize Steering
execute unless score comms sabotage matches 1 if score @s nav.steering matches 0 run data modify storage tasks:player nav.steering set value '{"text":"█","color":"#FFFF00"}'

### Prime Shields
execute unless score comms sabotage matches 1 if score @s shld.prime matches 0 run data modify storage tasks:player shld.prime set value '{"text":"█","color":"#FFFF00"}'

### Inspect Sample
execute unless score comms sabotage matches 1 if score @s med.sample matches 0 run data modify storage tasks:player med.sample set value '{"text":"█","color":"#FFFF00"}'

###Fuel Engines
execute unless score comms sabotage matches 1 if score @s low.fuel.1 matches 0 run data modify storage tasks:player low.fuel set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s up.fuel.1 matches 0 run data modify storage tasks:player up.fuel set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s low.fuel.0 matches 0 run data modify storage tasks:player strg.fuel set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s up.fuel.0 matches 0 run data modify storage tasks:player strg.fuel set value '{"text":"█","color":"#FFFF00"}'

###Empty Garbage/Chute
execute unless score comms sabotage matches 1 if score @s caf.garbage.0 matches 0 run data modify storage tasks:player caf.garbage set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s o2.chute.0 matches 0 run data modify storage tasks:player o2.chute set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s caf.garbage.1 matches 0 run data modify storage tasks:player strg.garbage set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s o2.chute.1 matches 0 run data modify storage tasks:player strg.garbage set value '{"text":"█","color":"#FFFF00"}'

### Divert Power
execute unless score comms sabotage matches 1 if score @s com.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s low.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s nav.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s o2.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s weap.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s sec.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s shld.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s up.power.0 matches 0 run data modify storage tasks:player elec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s com.power.1 matches 0 run data modify storage tasks:player com.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s low.power.1 matches 0 run data modify storage tasks:player low.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s nav.power.1 matches 0 run data modify storage tasks:player nav.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s o2.power.1 matches 0 run data modify storage tasks:player o2.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s weap.power.1 matches 0 run data modify storage tasks:player weap.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s sec.power.1 matches 0 run data modify storage tasks:player sec.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s shld.power.1 matches 0 run data modify storage tasks:player shld.power set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s up.power.1 matches 0 run data modify storage tasks:player up.power set value '{"text":"█","color":"#FFFF00"}'

### Clear Asteroids
execute unless score comms sabotage matches 1 if score @s weap.clear matches 0 run data modify storage tasks:player weap.clear set value '{"text":"█","color":"#FFFF00"}'

### Clean O2 Filter
execute unless score comms sabotage matches 1 if score @s o2.clean matches 0 run data modify storage tasks:player o2.clean set value '{"text":"█","color":"#FFFF00"}'

### Chart Course
execute unless score comms sabotage matches 1 if score @s nav.course matches 0 run data modify storage tasks:player nav.course set value '{"text":"█","color":"#FFFF00"}'

### Calibrate Distributor
execute unless score comms sabotage matches 1 if score @s elec.calibrate matches 0 run data modify storage tasks:player elec.calibrate set value '{"text":"█","color":"#FFFF00"}'

### Align Engine Output
execute unless score comms sabotage matches 1 if score @s up.align.0 matches 0 run data modify storage tasks:player up.align set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s up.align.1 matches 0 run data modify storage tasks:player low.align set value '{"text":"█","color":"#FFFF00"}'

### Fix Wiring
execute unless score comms sabotage matches 1 if score @s caf.wiring matches 0 run data modify storage tasks:player caf.fix set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s sec.wiring matches 0 run data modify storage tasks:player sec.fix set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s nav.wiring matches 0 run data modify storage tasks:player nav.fix set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s elec.wiring matches 0 run data modify storage tasks:player elec.fix set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s adm.wiring matches 0 run data modify storage tasks:player adm.fix set value '{"text":"█","color":"#FFFF00"}'
execute unless score comms sabotage matches 1 if score @s strg.wiring matches 0 run data modify storage tasks:player strg.fix set value '{"text":"█","color":"#FFFF00"}'


tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"████████████████████████████████","color":"#061047"},{"text":"\n"},{"text":"███████████████","color":"#061047"},{"text":"████","color":"#0C2EE5"},{"text":"█████████████","color":"#061047"},{"text":"\n"},{"text":"██████████████","color":"#061047"},{"nbt":"caf.fix","storage":"tasks:player","interpret":true},{"text":"████","color":"#0C2EFF"},{"nbt":"caf.upload","storage":"tasks:player","interpret":true},{"text":"███","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"weap.upload","storage":"tasks:player","interpret":true},{"text":"███████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"up.power","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██████","color":"#061047"},{"text":"███████","color":"#0C2EFF"},{"nbt":"caf.garbage","storage":"tasks:player","interpret":true},{"text":"██","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos1","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos2","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"███","color":"#A7B1E5"},{"nbt":"pos3","storage":"tasks:player","interpret":true},{"text":"██","color":"#A7B1E5"},{"text":"████","color":"#0C2EFF"},{"nbt":"pos4","storage":"tasks:player","interpret":true},{"text":"███","color":"#0C2EFF"},{"nbt":"pos5","storage":"tasks:player","interpret":true},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#0C2EFF"},{"nbt":"weap.clear","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"nbt":"up.align","storage":"tasks:player","interpret":true},{"nbt":"up.fuel","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"████","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"████████","color":"#0C2EFF"},{"text":"██","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"nbt":"weap.power","storage":"tasks:player","interpret":true},{"text":"██████","color":"#061047"},{"text":"\n"},{"text":"█████","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"████","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"███████","color":"#0C2EFF"},{"text":"███","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"███████","color":"#061047"},{"text":"\n"},{"text":"█","color":"#061047"},{"nbt":"reac.manifolds","storage":"tasks:player","interpret":true},{"text":"██","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos6","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"██████","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"nbt":"o2.clean","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"nbt":"o2.power","storage":"tasks:player","interpret":true},{"text":"█","color":"#A7B1E5"},{"nbt":"pos7","storage":"tasks:player","interpret":true},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"nbt":"nav.power","storage":"tasks:player","interpret":true},{"nbt":"nav.upload","storage":"tasks:player","interpret":true},{"text":"██","color":"#061047"},{"text":"\n"},{"text":"█","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos8","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██","color":"#A7B1E5"},{"nbt":"sec.fix","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"nbt":"sec.power","storage":"tasks:player","interpret":true},{"text":"█","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"med.scan","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"nbt":"med.sample","storage":"tasks:player","interpret":true},{"text":"██","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"nbt":"o2.chute","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"nbt":"pos9","storage":"tasks:player","interpret":true},{"text":"███","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"nbt":"nav.fix","storage":"tasks:player","interpret":true},{"nbt":"pos10","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"nbt":"nav.course","storage":"tasks:player","interpret":true},{"text":"█","color":"#061047"},{"text":"\n"},{"text":"█","color":"#061047"},{"nbt":"reac.start","storage":"tasks:player","interpret":true},{"text":"██","color":"#0C2EFF"},{"text":"█","color":"#A7B1E5"},{"nbt":"pos11","storage":"tasks:player","interpret":true},{"text":"█","color":"#A7B1E5"},{"nbt":"pos12","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"████████","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"██████","color":"#061047"},{"text":"███","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"nav.steering","storage":"tasks:player","interpret":true},{"text":"██","color":"#061047"},{"text":"\n"},{"text":"█","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"nbt":"elec.upload","storage":"tasks:player","interpret":true},{"nbt":"elec.power","storage":"tasks:player","interpret":true},{"nbt":"elec.fix","storage":"tasks:player","interpret":true},{"nbt":"elec.calibrate","storage":"tasks:player","interpret":true},{"text":"███","color":"#061047"},{"nbt":"pos13","storage":"tasks:player","interpret":true},{"text":"█","color":"#A7B1E5"},{"nbt":"adm.fix","storage":"tasks:player","interpret":true},{"nbt":"adm.upload","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██","color":"#061047"},{"nbt":"pos14","storage":"tasks:player","interpret":true},{"text":"███████","color":"#061047"},{"text":"\n"},{"text":"█","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"text":"██","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"████","color":"#061047"},{"text":"████","color":"#0C2EFF"},{"text":"███","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos15","storage":"tasks:player","interpret":true},{"nbt":"adm.card","storage":"tasks:player","interpret":true},{"text":"██","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"███████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"nbt":"low.power","storage":"tasks:player","interpret":true},{"text":"██","color":"#0C2EFF"},{"text":"███","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos16","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"strg.fix","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"█████","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"nbt":"shld.power","storage":"tasks:player","interpret":true},{"text":"██████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos17","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"████","color":"#0C2EFF"},{"text":"██","color":"#A7B1E5"},{"nbt":"pos18","storage":"tasks:player","interpret":true},{"text":"██","color":"#A7B1E5"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos19","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"█","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"text":"██","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"nbt":"pos20","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██","color":"#061047"},{"text":"█","color":"#A7B1E5"},{"text":"██","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"██████","color":"#061047"},{"text":"\n"},{"text":"████","color":"#061047"},{"nbt":"low.align","storage":"tasks:player","interpret":true},{"nbt":"low.fuel","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"██","color":"#A7B1E5"},{"nbt":"pos21","storage":"tasks:player","interpret":true},{"text":"███","color":"#A7B1E5"},{"text":"█","color":"#0C2EFF"},{"nbt":"strg.fuel","storage":"tasks:player","interpret":true},{"text":"██","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"nbt":"com.upload","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"nbt":"com.power","storage":"tasks:player","interpret":true},{"text":"█","color":"#061047"},{"nbt":"shld.prime","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"███████","color":"#061047"},{"text":"\n"},{"text":"██████████████","color":"#061047"},{"text":"████","color":"#0C2EFF"},{"text":"█","color":"#061047"},{"text":"█","color":"#0C2EFF"},{"nbt":"pos22","storage":"tasks:player","interpret":true},{"text":"█","color":"#0C2EFF"},{"text":"██████████","color":"#061047"},{"text":"\n"},{"text":"███████████████","color":"#061047"},{"text":"██","color":"#0C2EFF"},{"nbt":"strg.garbage","storage":"tasks:player","interpret":true},{"text":"█","color":"#061047"},{"text":"███","color":"#0C2EFF"},{"text":"██████████","color":"#061047"},{"text":"\n"},{"text":"████████████████████████████████","color":"#061047"}]

scoreboard players set @s test 0
