
execute if score @s up.align.0 matches 0..1 run scoreboard players set Engine dtp4 0

execute if score @s up.align.1 matches 0 run team modify alignP4 prefix {"text":"Lower Engine: Align "}
execute if score @s up.align.1 matches 0 run team modify alignP4 suffix {"text":" Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP4 color gold

execute if score @s up.align.1 matches 1 run team modify alignP4 suffix {"text":" Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP4 color green
