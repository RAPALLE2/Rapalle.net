
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set Chut dtp2 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP2 prefix {"text":"Storage: Empty "}
execute if score @s o2.chute.1 matches 0 run team modify chuteP2 suffix {"text":"e (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP2 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP2 suffix {"text":"e (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP2 color green
