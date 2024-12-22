
execute if score @s fix.wiring matches 0 run scoreboard players set ix dtp3 0

execute if score @s adm.wiring matches 0 run team modify wiringP3 prefix {"text":"Admin: F"}

execute if score @s caf.wiring matches 0 run team modify wiringP3 prefix {"text":"Cafeteria: F"}

execute if score @s elec.wiring matches 0 run team modify wiringP3 prefix {"text":"Electrical: F"}

execute if score @s nav.wiring matches 0 run team modify wiringP3 prefix {"text":"Navigation: F"}

execute if score @s sec.wiring matches 0 run team modify wiringP3 prefix {"text":"Security: F"}

execute if score @s strg.wiring matches 0 run team modify wiringP3 prefix {"text":"Storage: F"}

execute if score @s fix.wiring matches 1..2 run team modify wiringP3 color gold

execute if score @s fix.wiring matches 3 run team modify wiringP3 color green
