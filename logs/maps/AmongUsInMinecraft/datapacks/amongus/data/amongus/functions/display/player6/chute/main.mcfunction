
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set hu dtp6 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP6 prefix {"text":"Storage: Empty C"}
execute if score @s o2.chute.1 matches 0 run team modify chuteP6 suffix {"text":"te (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP6 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP6 suffix {"text":"te (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP6 color green
