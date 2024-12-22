
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set Empty dtp8 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP8 prefix {"text":"Storage: "}
execute if score @s o2.chute.1 matches 0 run team modify chuteP8 suffix {"text":" Chute (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP8 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP8 suffix {"text":" Chute (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP8 color green
