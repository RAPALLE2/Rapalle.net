
execute if score @s up.align.0 matches 0..1 run scoreboard players set Align dtp1 0

execute if score @s up.align.1 matches 0 run team modify alignP1 prefix {"text":"Lower Engine: "}
execute if score @s up.align.1 matches 0 run team modify alignP1 suffix {"text":" Engine Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP1 color gold

execute if score @s up.align.1 matches 1 run team modify alignP1 suffix {"text":" Engine Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP1 color green
