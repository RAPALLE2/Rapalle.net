
execute if score @s weap.upload.0 matches 0 run scoreboard players set at dtp10 0

execute if score @s weap.upload.0 matches 0 run team modify uploadP10 prefix {"text":"Weapons: Download D"}

execute if score @s weap.upload.1 matches 0 run team modify uploadP10 color gold

execute if score @s weap.upload.1 matches 0 run team modify uploadP10 prefix {"text":"Admin: Upload D"}
execute if score @s weap.upload.1 matches 0 run team modify uploadP10 suffix {"text":"a (1/2)"}

execute if score @s weap.upload matches 1 run team modify uploadP10 suffix {"text":"a (2/2)"}
execute if score @s weap.upload matches 1 run team modify uploadP10 color green
