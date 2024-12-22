
execute if score @s up.align.0 matches 0..1 run scoreboard players set Alig dtp2 0

execute if score @s up.align.1 matches 0 run team modify alignP2 prefix {"text":"Lower Engine: "}
execute if score @s up.align.1 matches 0 run team modify alignP2 suffix {"text":"n Engine Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP2 color gold

execute if score @s up.align.1 matches 1 run team modify alignP2 suffix {"text":"n Engine Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP2 color green
