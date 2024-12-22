
scoreboard players reset @s btn.reac.a
scoreboard players reset @s btn.reac.b
scoreboard players reset @s btn.reac.c
scoreboard players reset @s btn.reac.d
scoreboard players reset @s btn.reac.e



execute if score @s prog.reactor matches 5 run scoreboard players enable @s btn.reac.e
execute if score @s prog.reactor matches 4..5 run scoreboard players enable @s btn.reac.d
execute if score @s prog.reactor matches 3..5 run scoreboard players enable @s btn.reac.c
execute if score @s prog.reactor matches 2..5 run scoreboard players enable @s btn.reac.b
execute if score @s prog.reactor matches 1..5 run scoreboard players enable @s btn.reac.a
