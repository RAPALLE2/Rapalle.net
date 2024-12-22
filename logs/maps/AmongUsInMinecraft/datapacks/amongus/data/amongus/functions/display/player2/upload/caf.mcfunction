
execute if score @s caf.upload.0 matches 0 run scoreboard players set loa dtp2 0

execute if score @s caf.upload.0 matches 0 run team modify uploadP2 prefix {"text":"Cafeteria: Down"}

execute if score @s caf.upload.1 matches 0 run team modify uploadP2 color gold

execute if score @s caf.upload.1 matches 0 run team modify uploadP2 prefix {"text":"Admin: Up"}
execute if score @s caf.upload.1 matches 0 run team modify uploadP2 suffix {"text":"d Data (1/2)"}

execute if score @s caf.upload matches 1 run team modify uploadP2 suffix {"text":"d Data (2/2)"}
execute if score @s caf.upload matches 1 run team modify uploadP2 color green
