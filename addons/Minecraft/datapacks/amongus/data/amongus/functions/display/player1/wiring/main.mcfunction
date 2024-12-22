
execute if score @s fix.wiring matches 0 run scoreboard players set Fix dtp1 0

execute if score @s adm.wiring matches 0 run team modify wiringP1 prefix {"text":"Admin: "}

execute if score @s caf.wiring matches 0 run team modify wiringP1 prefix {"text":"Cafeteria: "}

execute if score @s elec.wiring matches 0 run team modify wiringP1 prefix {"text":"Electrical: "}

execute if score @s nav.wiring matches 0 run team modify wiringP1 prefix {"text":"Navigation: "}

execute if score @s sec.wiring matches 0 run team modify wiringP1 prefix {"text":"Security: "}

execute if score @s strg.wiring matches 0 run team modify wiringP1 prefix {"text":"Storage: "}

execute if score @s fix.wiring matches 1..2 run team modify wiringP1 color gold

execute if score @s fix.wiring matches 3 run team modify wiringP1 color green
