
execute if score @s weap.clear matches 0..1 run scoreboard players set Asteroi dtp4 0

execute if score @s weap.clear.count matches 1 run team modify asteroidsP4 suffix {"text":"ds (1/12)"}
execute if score @s weap.clear.count matches 2 run team modify asteroidsP4 suffix {"text":"ds (2/12)"}
execute if score @s weap.clear.count matches 3 run team modify asteroidsP4 suffix {"text":"ds (3/12)"}
execute if score @s weap.clear.count matches 4 run team modify asteroidsP4 suffix {"text":"ds (4/12)"}
execute if score @s weap.clear.count matches 5 run team modify asteroidsP4 suffix {"text":"ds (5/12)"}
execute if score @s weap.clear.count matches 6 run team modify asteroidsP4 suffix {"text":"ds (6/12)"}
execute if score @s weap.clear.count matches 7 run team modify asteroidsP4 suffix {"text":"ds (7/12)"}
execute if score @s weap.clear.count matches 8 run team modify asteroidsP4 suffix {"text":"ds (8/12)"}
execute if score @s weap.clear.count matches 9 run team modify asteroidsP4 suffix {"text":"ds (9/12)"}
execute if score @s weap.clear.count matches 10 run team modify asteroidsP4 suffix {"text":"ds (10/12)"}
execute if score @s weap.clear.count matches 11 run team modify asteroidsP4 suffix {"text":"ds (11/12)"}
execute if score @s weap.clear.count matches 12 run team modify asteroidsP4 suffix {"text":"ds (12/12)"}

execute if score @s weap.clear.count matches 1 run team modify asteroidsP4 color gold

execute if score @s weap.clear matches 1 run team modify asteroidsP4 suffix {"text":"ds (12/12)"}

execute if score @s weap.clear matches 1 run team modify asteroidsP4 color green
