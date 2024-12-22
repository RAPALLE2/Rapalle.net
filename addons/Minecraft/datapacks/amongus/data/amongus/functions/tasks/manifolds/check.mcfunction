
scoreboard players set temp reac.btn.num 0
scoreboard players operation temp manifolds.prog = @s manifolds.prog
scoreboard players add temp manifolds.prog 1

execute if score @s reac.btn.num matches 1 run scoreboard players operation temp reac.btn.num = @s rnA
execute if score @s reac.btn.num matches 2 run scoreboard players operation temp reac.btn.num = @s rnB
execute if score @s reac.btn.num matches 3 run scoreboard players operation temp reac.btn.num = @s rnC
execute if score @s reac.btn.num matches 4 run scoreboard players operation temp reac.btn.num = @s rnD
execute if score @s reac.btn.num matches 5 run scoreboard players operation temp reac.btn.num = @s rnE
execute if score @s reac.btn.num matches 6 run scoreboard players operation temp reac.btn.num = @s rnF
execute if score @s reac.btn.num matches 7 run scoreboard players operation temp reac.btn.num = @s rnG
execute if score @s reac.btn.num matches 8 run scoreboard players operation temp reac.btn.num = @s rnH
execute if score @s reac.btn.num matches 9 run scoreboard players operation temp reac.btn.num = @s rnI
execute if score @s reac.btn.num matches 10 run scoreboard players operation temp reac.btn.num = @s rnJ

execute if score temp reac.btn.num = temp manifolds.prog run function amongus:tasks/manifolds/prog

execute unless score temp reac.btn.num = temp manifolds.prog run function amongus:tasks/manifolds/init

scoreboard players reset @s reac.btn.num
scoreboard players enable @s reac.btn.num
