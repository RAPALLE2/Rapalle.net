
#ambiente
playsound minecraft:ambient.warped_forest.loop master @s ~ ~ ~ 100 1
playsound minecraft:music.nether.basalt_deltas master @a 107 23 34 100

#door close
playsound minecraft:entity.illusioner.mirror_move master @s ~ ~ ~ 1 1
#door open
playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 1

execute if score #alerttimer data matches 1.. unless score #meeting data matches 1 as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 1 0.5

playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 1

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1

playsound minecraft:event.raid.horn master @s ~ ~ ~ 100 1
execute if score #eta vote matches 1..10 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.5

execute as @a at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode master @s ~ ~ ~ 100 1


playsound minecraft:entity.generic.burn master @s ~ ~ ~ 100 1

playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 100 1

playsound minecraft:entity.player.hurt_sweet_berry_bush master @s ~ ~ ~ 100 0.85



playsound minecraft:entity.player.breath master @s ~ ~ ~ 100 1
