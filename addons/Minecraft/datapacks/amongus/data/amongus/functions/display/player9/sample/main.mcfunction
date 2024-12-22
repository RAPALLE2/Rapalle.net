
execute if score @s med.sample matches 0..1 run scoreboard players set Sam dtp9 0
execute if score @s start.sample matches 1 unless score @s med.sample matches 1 run team modify sampleP9 color gold
execute if score @s med.sample matches 1 run team modify sampleP9 color green
