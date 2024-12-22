
execute if score @s nav.upload.0 matches 0 run scoreboard players set ata dtp9 0

execute if score @s nav.upload.0 matches 0 run team modify uploadP9 prefix {"text":"Navigation: Download D"}

execute if score @s nav.upload.1 matches 0 run team modify uploadP9 color gold

execute if score @s nav.upload.1 matches 0 run team modify uploadP9 prefix {"text":"Admin: Upload D"}
execute if score @s nav.upload.1 matches 0 run team modify uploadP9 suffix {"text":" (1/2)"}

execute if score @s nav.upload matches 1 run team modify uploadP9 suffix {"text":" (2/2)"}
execute if score @s nav.upload matches 1 run team modify uploadP9 color green
