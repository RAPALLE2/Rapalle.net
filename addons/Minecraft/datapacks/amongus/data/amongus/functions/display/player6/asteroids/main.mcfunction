
execute if score @s weap.clear matches 0..1 run scoreboard players set Aster dtp6 0

execute if score @s weap.clear.count matches 1 run team modify asteroidsP6 suffix {"text":"oids (1/12)"}
execute if score @s weap.clear.count matches 2 run team modify asteroidsP6 suffix {"text":"oids (2/12)"}
execute if score @s weap.clear.count matches 3 run team modify asteroidsP6 suffix {"text":"oids (3/12)"}
execute if score @s weap.clear.count matches 4 run team modify asteroidsP6 suffix {"text":"oids (4/12)"}
execute if score @s weap.clear.count matches 5 run team modify asteroidsP6 suffix {"text":"oids (5/12)"}
execute if score @s weap.clear.count matches 6 run team modify asteroidsP6 suffix {"text":"oids (6/12)"}
execute if score @s weap.clear.count matches 7 run team modify asteroidsP6 suffix {"text":"oids (7/12)"}
execute if score @s weap.clear.count matches 8 run team modify asteroidsP6 suffix {"text":"oids (8/12)"}
execute if score @s weap.clear.count matches 9 run team modify asteroidsP6 suffix {"text":"oids (9/12)"}
execute if score @s weap.clear.count matches 10 run team modify asteroidsP6 suffix {"text":"oids (10/12)"}
execute if score @s weap.clear.count matches 11 run team modify asteroidsP6 suffix {"text":"oids (11/12)"}
execute if score @s weap.clear.count matches 12 run team modify asteroidsP6 suffix {"text":"oids (12/12)"}

execute if score @s weap.clear.count matches 1 run team modify asteroidsP6 color gold

execute if score @s weap.clear matches 1 run team modify asteroidsP6 suffix {"text":"oids (12/12)"}

execute if score @s weap.clear matches 1 run team modify asteroidsP6 color green
