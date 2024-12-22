
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set hute dtp4 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP4 prefix {"text":"Storage: Empty C"}
execute if score @s o2.chute.1 matches 0 run team modify chuteP4 suffix {"text":" (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP4 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP4 suffix {"text":" (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP4 color green
