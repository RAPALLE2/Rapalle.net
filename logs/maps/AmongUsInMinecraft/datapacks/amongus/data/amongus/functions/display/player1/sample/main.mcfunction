
execute if score @s med.sample matches 0..1 run scoreboard players set Inspect dtp1 0
execute if score @s start.sample matches 1 unless score @s med.sample matches 1 run team modify sampleP1 color gold
execute if score @s med.sample matches 1 run team modify sampleP1 color green
