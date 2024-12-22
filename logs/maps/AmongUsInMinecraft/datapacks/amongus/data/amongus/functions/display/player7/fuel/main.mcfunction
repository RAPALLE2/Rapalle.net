
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set ngines dtp7 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP7 prefix {"text":"Upper Engine: Fuel E"}

execute if score @s up.fuel.1 matches 0 run team modify fuelP7 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP7 prefix {"text":"Storage: Fuel E"}
execute if score @s low.fuel.0 matches 0 run team modify fuelP7 suffix {"text":" (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP7 prefix {"text":"Lower Engine: Fuel E"}

execute if score @s low.fuel.1 matches 1 run team modify fuelP7 suffix {"text":" (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP7 color green
