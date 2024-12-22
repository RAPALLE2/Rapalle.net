
execute if score @s up.align.0 matches 0..1 run scoreboard players set Eng dtp7 0

execute if score @s up.align.1 matches 0 run team modify alignP7 prefix {"text":"Lower Engine: Align "}
execute if score @s up.align.1 matches 0 run team modify alignP7 suffix {"text":"ine Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP7 color gold

execute if score @s up.align.1 matches 1 run team modify alignP7 suffix {"text":"ine Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP7 color green
