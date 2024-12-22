
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set Chu dtp3 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP3 prefix {"text":"Storage: Empty "}
execute if score @s o2.chute.1 matches 0 run team modify chuteP3 suffix {"text":"te (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP3 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP3 suffix {"text":"te (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP3 color green
