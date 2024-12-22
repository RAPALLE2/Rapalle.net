
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set mpty dtp10 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP10 prefix {"text":"Storage: E"}
execute if score @s o2.chute.1 matches 0 run team modify chuteP10 suffix {"text":" Chute (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP10 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP10 suffix {"text":" Chute (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP10 color green
