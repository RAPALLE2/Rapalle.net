
execute if score @s med.sample matches 0..1 run scoreboard players set spect dtp10 0
execute if score @s start.sample matches 1 unless score @s med.sample matches 1 run team modify sampleP10 color gold
execute if score @s med.sample matches 1 run team modify sampleP10 color green
