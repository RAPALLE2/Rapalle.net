
execute if score @s elec.upload.0 matches 0 run scoreboard players set oad dtp4 0

execute if score @s elec.upload.0 matches 0 run team modify uploadP4 prefix {"text":"Electrical: Downl"}

execute if score @s elec.upload.1 matches 0 run team modify uploadP4 color gold

execute if score @s elec.upload.1 matches 0 run team modify uploadP4 prefix {"text":"Admin: Upl"}
execute if score @s elec.upload.1 matches 0 run team modify uploadP4 suffix {"text":" Data (1/2)"}

execute if score @s elec.upload matches 1 run team modify uploadP4 suffix {"text":" Data (2/2)"}
execute if score @s elec.upload matches 1 run team modify uploadP4 color green
