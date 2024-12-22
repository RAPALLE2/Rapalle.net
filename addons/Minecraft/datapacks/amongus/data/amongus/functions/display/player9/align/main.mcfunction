
execute if score @s up.align.0 matches 0..1 run scoreboard players set Outpu dtp9 0

execute if score @s up.align.1 matches 0 run team modify alignP9 prefix {"text":"Lower Engine: Align Engine "}
execute if score @s up.align.1 matches 0 run team modify alignP9 suffix {"text":"t (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP9 color gold

execute if score @s up.align.1 matches 1 run team modify alignP9 suffix {"text":"t (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP9 color green
