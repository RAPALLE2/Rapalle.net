
execute if score @s fix.wiring matches 0 run scoreboard players set Wi dtp8 0

execute if score @s adm.wiring matches 0 run team modify wiringP8 prefix {"text":"Admin: Fix "}

execute if score @s caf.wiring matches 0 run team modify wiringP8 prefix {"text":"Cafeteria: Fix "}

execute if score @s elec.wiring matches 0 run team modify wiringP8 prefix {"text":"Electrical: Fix "}

execute if score @s nav.wiring matches 0 run team modify wiringP8 prefix {"text":"Navigation: Fix "}

execute if score @s sec.wiring matches 0 run team modify wiringP8 prefix {"text":"Security: Fix "}

execute if score @s strg.wiring matches 0 run team modify wiringP8 prefix {"text":"Storage: Fix "}

execute if score @s fix.wiring matches 1..2 run team modify wiringP8 color gold

execute if score @s fix.wiring matches 3 run team modify wiringP8 color green
