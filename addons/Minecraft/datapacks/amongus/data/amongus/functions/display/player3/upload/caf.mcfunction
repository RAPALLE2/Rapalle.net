
execute if score @s caf.upload.0 matches 0 run scoreboard players set lo dtp3 0

execute if score @s caf.upload.0 matches 0 run team modify uploadP3 prefix {"text":"Cafeteria: Down"}

execute if score @s caf.upload.1 matches 0 run team modify uploadP3 color gold

execute if score @s caf.upload.1 matches 0 run team modify uploadP3 prefix {"text":"Admin: Up"}
execute if score @s caf.upload.1 matches 0 run team modify uploadP3 suffix {"text":"ad Data (1/2)"}

execute if score @s caf.upload matches 1 run team modify uploadP3 suffix {"text":"ad Data (2/2)"}
execute if score @s caf.upload matches 1 run team modify uploadP3 color green