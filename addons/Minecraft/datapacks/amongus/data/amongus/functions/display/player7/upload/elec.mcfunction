
execute if score @s elec.upload.0 matches 0 run scoreboard players set Dat dtp7 0

execute if score @s elec.upload.0 matches 0 run team modify uploadP7 prefix {"text":"Electrical: Download "}

execute if score @s elec.upload.1 matches 0 run team modify uploadP7 color gold

execute if score @s elec.upload.1 matches 0 run team modify uploadP7 prefix {"text":"Admin: Upload "}
execute if score @s elec.upload.1 matches 0 run team modify uploadP7 suffix {"text":"a (1/2)"}

execute if score @s elec.upload matches 1 run team modify uploadP7 suffix {"text":"a (2/2)"}
execute if score @s elec.upload matches 1 run team modify uploadP7 color green
