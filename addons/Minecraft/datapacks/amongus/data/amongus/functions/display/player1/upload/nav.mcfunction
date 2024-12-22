
execute if score @s nav.upload.0 matches 0 run scoreboard players set load dtp1 0

execute if score @s nav.upload.0 matches 0 run team modify uploadP1 prefix {"text":"Navigation: Down"}

execute if score @s nav.upload.1 matches 0 run team modify uploadP1 color gold

execute if score @s nav.upload.1 matches 0 run team modify uploadP1 prefix {"text":"Admin: Up"}
execute if score @s nav.upload.1 matches 0 run team modify uploadP1 suffix {"text":" Data (1/2)"}

execute if score @s nav.upload matches 1 run team modify uploadP1 suffix {"text":" Data (2/2)"}
execute if score @s nav.upload matches 1 run team modify uploadP1 color green
