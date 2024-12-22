
execute if score @s up.align.0 matches 0..1 run scoreboard players set Engi dtp6 0

execute if score @s up.align.1 matches 0 run team modify alignP6 prefix {"text":"Lower Engine: Align "}
execute if score @s up.align.1 matches 0 run team modify alignP6 suffix {"text":"ne Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP6 color gold

execute if score @s up.align.1 matches 1 run team modify alignP6 suffix {"text":"ne Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP6 color green
