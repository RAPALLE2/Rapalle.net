
execute if score @s o2.chute.0 matches 0..1 run scoreboard players set pty dtp9 0

execute if score @s o2.chute.1 matches 0 run team modify chuteP9 prefix {"text":"Storage: Em"}
execute if score @s o2.chute.1 matches 0 run team modify chuteP9 suffix {"text":" Chute (1/2)"}

execute if score @s o2.chute.1 matches 0 run team modify chuteP9 color gold

execute if score @s o2.chute.1 matches 1 run team modify chuteP9 suffix {"text":" Chute (2/2)"}
execute if score @s o2.chute.1 matches 1 run team modify chuteP9 color green
