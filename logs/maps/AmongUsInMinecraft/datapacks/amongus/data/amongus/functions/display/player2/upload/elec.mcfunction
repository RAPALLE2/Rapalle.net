
execute if score @s elec.upload.0 matches 0 run scoreboard players set loa dtp2 0

execute if score @s elec.upload.0 matches 0 run team modify uploadP2 prefix {"text":"Electrical: Down"}

execute if score @s elec.upload.1 matches 0 run team modify uploadP2 color gold

execute if score @s elec.upload.1 matches 0 run team modify uploadP2 prefix {"text":"Admin: Up"}
execute if score @s elec.upload.1 matches 0 run team modify uploadP2 suffix {"text":"d Data (1/2)"}

execute if score @s elec.upload matches 1 run team modify uploadP2 suffix {"text":"d Data (2/2)"}
execute if score @s elec.upload matches 1 run team modify uploadP2 color green
