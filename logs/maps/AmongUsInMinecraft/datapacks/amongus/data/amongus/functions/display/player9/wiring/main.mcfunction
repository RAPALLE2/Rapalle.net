
execute if score @s fix.wiring matches 0 run scoreboard players set ring dtp9 0

execute if score @s adm.wiring matches 0 run team modify wiringP9 prefix {"text":"Admin: Fix Wi"}

execute if score @s caf.wiring matches 0 run team modify wiringP9 prefix {"text":"Cafeteria: Fix Wi"}

execute if score @s elec.wiring matches 0 run team modify wiringP9 prefix {"text":"Electrical: Fix Wi"}

execute if score @s nav.wiring matches 0 run team modify wiringP9 prefix {"text":"Navigation: Fix Wi"}

execute if score @s sec.wiring matches 0 run team modify wiringP9 prefix {"text":"Security: Fix Wi"}

execute if score @s strg.wiring matches 0 run team modify wiringP9 prefix {"text":"Storage: Fix Wi"}

execute if score @s fix.wiring matches 1..2 run team modify wiringP9 color gold

execute if score @s fix.wiring matches 3 run team modify wiringP9 color green
