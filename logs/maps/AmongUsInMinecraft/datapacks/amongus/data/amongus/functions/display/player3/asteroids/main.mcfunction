
execute if score @s weap.clear matches 0..1 run scoreboard players set Asteroid dtp3 0

execute if score @s weap.clear.count matches 1 run team modify asteroidsP3 suffix {"text":"s (1/12)"}
execute if score @s weap.clear.count matches 2 run team modify asteroidsP3 suffix {"text":"s (2/12)"}
execute if score @s weap.clear.count matches 3 run team modify asteroidsP3 suffix {"text":"s (3/12)"}
execute if score @s weap.clear.count matches 4 run team modify asteroidsP3 suffix {"text":"s (4/12)"}
execute if score @s weap.clear.count matches 5 run team modify asteroidsP3 suffix {"text":"s (5/12)"}
execute if score @s weap.clear.count matches 6 run team modify asteroidsP3 suffix {"text":"s (6/12)"}
execute if score @s weap.clear.count matches 7 run team modify asteroidsP3 suffix {"text":"s (7/12)"}
execute if score @s weap.clear.count matches 8 run team modify asteroidsP3 suffix {"text":"s (8/12)"}
execute if score @s weap.clear.count matches 9 run team modify asteroidsP3 suffix {"text":"s (9/12)"}
execute if score @s weap.clear.count matches 10 run team modify asteroidsP3 suffix {"text":"s (10/12)"}
execute if score @s weap.clear.count matches 11 run team modify asteroidsP3 suffix {"text":"s (11/12)"}
execute if score @s weap.clear.count matches 12 run team modify asteroidsP3 suffix {"text":"s (12/12)"}

execute if score @s weap.clear.count matches 1 run team modify asteroidsP3 color gold

execute if score @s weap.clear matches 1 run team modify asteroidsP3 suffix {"text":"s (12/12)"}

execute if score @s weap.clear matches 1 run team modify asteroidsP3 color green
