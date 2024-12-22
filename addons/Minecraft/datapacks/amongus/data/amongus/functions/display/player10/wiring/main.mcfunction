
execute if score @s fix.wiring matches 0 run scoreboard players set Fix dtp10 0

execute if score @s adm.wiring matches 0 run team modify wiringP10 prefix {"text":"Admin: Fix W"}

execute if score @s caf.wiring matches 0 run team modify wiringP10 prefix {"text":"Cafeteria: Fix W"}

execute if score @s elec.wiring matches 0 run team modify wiringP10 prefix {"text":"Electrical: Fix W"}

execute if score @s nav.wiring matches 0 run team modify wiringP10 prefix {"text":"Navigation: Fix W"}

execute if score @s sec.wiring matches 0 run team modify wiringP10 prefix {"text":"Security: Fix W"}

execute if score @s strg.wiring matches 0 run team modify wiringP10 prefix {"text":"Storage: Fix W"}

execute if score @s fix.wiring matches 1..2 run team modify wiringP10 color gold

execute if score @s fix.wiring matches 3 run team modify wiringP10 color green
