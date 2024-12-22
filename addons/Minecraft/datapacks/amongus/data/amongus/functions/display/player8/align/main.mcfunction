
execute if score @s up.align.0 matches 0..1 run scoreboard players set Output dtp8 0

execute if score @s up.align.1 matches 0 run team modify alignP8 prefix {"text":"Lower Engine: Align Engine "}
execute if score @s up.align.1 matches 0 run team modify alignP8 suffix {"text":" (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP8 color gold

execute if score @s up.align.1 matches 1 run team modify alignP8 suffix {"text":" (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP8 color green
