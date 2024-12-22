
execute if entity @s[tag=temp_ghost] run effect give @s minecraft:blindness 6 255 true
execute if entity @s[tag=temp_ghost] run effect give @s minecraft:slowness 5 255 true
execute if entity @s[tag=temp_ghost] run effect give @s minecraft:invisibility 999999 255 true
execute if entity @s[tag=temp_ghost] run particle minecraft:soul ~ ~ ~ 2 2 2 0.00001 1000 normal @s

execute as @e[tag=temp_ghost,scores={color=1}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color1"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=2}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color2"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:5636095}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=3}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color3"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:261891}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=4}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color4"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:16750848}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=5}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color5"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:12527280}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=6}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color6"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:255}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=7}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color7"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:43690}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=8}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color8"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:16733695}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=9}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color9"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:8553090}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}
execute as @e[tag=temp_ghost,scores={color=10}] run summon armor_stand ~ ~-1.3 ~ {Tags:["DeadBody","color10"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[20f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:33297}}},{id:"skeleton_skull",Count:1b}],HandItems:[{},{}],Pose:{Body:[279f,0f,0f],Head:[294f,334f,0f]}}

execute if entity @s[tag=impostor] run scoreboard players set @s kill 2
scoreboard players reset @s meetings.num

execute at @s run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 100 0.5
execute at @s run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 1
execute at @s run playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 1 1

clear @s

tag @s remove temp_ghost
tag @s add ghost
