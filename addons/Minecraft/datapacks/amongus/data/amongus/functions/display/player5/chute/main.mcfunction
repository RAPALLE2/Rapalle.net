
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set ute dtp5 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP5 prefix {"text":"Storage: Empty Ch"}
execute if score @s o2.chute.1 matches 0 run team modify chuteP5 suffix {"text":" (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP5 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP5 suffix {"text":" (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP5 color green
