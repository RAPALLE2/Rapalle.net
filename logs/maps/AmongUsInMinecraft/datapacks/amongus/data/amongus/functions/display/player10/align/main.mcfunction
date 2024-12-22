
execute if score @s up.align.0 matches 0..1 run scoreboard players set Outp dtp10 0

execute if score @s up.align.1 matches 0 run team modify alignP10 prefix {"text":"Lower Engine: Align Engine "}
execute if score @s up.align.1 matches 0 run team modify alignP10 suffix {"text":"ut (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP10 color gold

execute if score @s up.align.1 matches 1 run team modify alignP10 suffix {"text":"ut (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP10 color green
