
setblock 52 17 45 air
setblock 52 17 45 acacia_sign{Text1:'{"score":{"name":"emerg_cd","objective":"data"},"color":"#FF0000"}'} replace

data modify entity @e[type=minecraft:area_effect_cloud,tag=meet.show,limit=1] CustomName set from block 52 17 45 Text1
