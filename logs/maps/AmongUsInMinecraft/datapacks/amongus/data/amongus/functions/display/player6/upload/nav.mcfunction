
execute if score @s nav.upload.0 matches 0 run scoreboard players set Data dtp6 0

execute if score @s nav.upload.0 matches 0 run team modify uploadP6 prefix {"text":"Navigation: Download "}

execute if score @s nav.upload.1 matches 0 run team modify uploadP6 color gold

execute if score @s nav.upload.1 matches 0 run team modify uploadP6 prefix {"text":"Admin: Upload "}
execute if score @s nav.upload.1 matches 0 run team modify uploadP6 suffix {"text":" (1/2)"}

execute if score @s nav.upload matches 1 run team modify uploadP6 suffix {"text":" (2/2)"}
execute if score @s nav.upload matches 1 run team modify uploadP6 color green
