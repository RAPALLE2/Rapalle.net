
execute if score @s up.align.0 matches 0..1 run scoreboard players set Engin dtp5 0

execute if score @s up.align.1 matches 0 run team modify alignP5 prefix {"text":"Lower Engine: Align "}
execute if score @s up.align.1 matches 0 run team modify alignP5 suffix {"text":"e Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP5 color gold

execute if score @s up.align.1 matches 1 run team modify alignP5 suffix {"text":"e Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP5 color green
