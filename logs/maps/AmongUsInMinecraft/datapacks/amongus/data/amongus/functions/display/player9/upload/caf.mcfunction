
execute if score @s caf.upload.0 matches 0 run scoreboard players set ata dtp9 0

execute if score @s caf.upload.0 matches 0 run team modify uploadP9 prefix {"text":"Cafeteria: Download D"}

execute if score @s caf.upload.1 matches 0 run team modify uploadP9 color gold

execute if score @s caf.upload.1 matches 0 run team modify uploadP9 prefix {"text":"Admin: Upload D"}
execute if score @s caf.upload.1 matches 0 run team modify uploadP9 suffix {"text":" (1/2)"}

execute if score @s caf.upload matches 1 run team modify uploadP9 suffix {"text":" (2/2)"}
execute if score @s caf.upload matches 1 run team modify uploadP9 color green
