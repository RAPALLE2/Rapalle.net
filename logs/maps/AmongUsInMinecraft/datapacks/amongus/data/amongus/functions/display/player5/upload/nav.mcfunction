
execute if score @s nav.upload.0 matches 0 run scoreboard players set oa dtp5 0

execute if score @s nav.upload.0 matches 0 run team modify uploadP5 prefix {"text":"Navigation: Downl"}

execute if score @s nav.upload.1 matches 0 run team modify uploadP5 color gold

execute if score @s nav.upload.1 matches 0 run team modify uploadP5 prefix {"text":"Admin: Upl"}
execute if score @s nav.upload.1 matches 0 run team modify uploadP5 suffix {"text":"d Data (1/2)"}

execute if score @s nav.upload matches 1 run team modify uploadP5 suffix {"text":"d Data (2/2)"}
execute if score @s nav.upload matches 1 run team modify uploadP5 color green
