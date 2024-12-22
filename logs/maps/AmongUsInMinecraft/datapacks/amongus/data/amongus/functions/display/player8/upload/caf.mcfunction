
execute if score @s caf.upload.0 matches 0 run scoreboard players set Da dtp8 0

execute if score @s caf.upload.0 matches 0 run team modify uploadP8 prefix {"text":"Cafeteria: Download "}

execute if score @s caf.upload.1 matches 0 run team modify uploadP8 color gold

execute if score @s caf.upload.1 matches 0 run team modify uploadP8 prefix {"text":"Admin: Upload "}
execute if score @s caf.upload.1 matches 0 run team modify uploadP8 suffix {"text":"ta (1/2)"}

execute if score @s caf.upload matches 1 run team modify uploadP8 suffix {"text":"ta (2/2)"}
execute if score @s caf.upload matches 1 run team modify uploadP8 color green
