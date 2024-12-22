
execute if score @s up.align.0 matches 0..1 run scoreboard players set Ali dtp3 0

execute if score @s up.align.1 matches 0 run team modify alignP3 prefix {"text":"Lower Engine: "}
execute if score @s up.align.1 matches 0 run team modify alignP3 suffix {"text":"gn Engine Output (1/2)"}

execute if score @s up.align.1 matches 0 run team modify alignP3 color gold

execute if score @s up.align.1 matches 1 run team modify alignP3 suffix {"text":"gn Engine Output (2/2)"}
execute if score @s up.align.1 matches 1 run team modify alignP3 color green
