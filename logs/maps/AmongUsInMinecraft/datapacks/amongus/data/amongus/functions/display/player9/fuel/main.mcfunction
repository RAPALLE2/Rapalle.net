
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set ines dtp9 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP9 prefix {"text":"Upper Engine: Fuel Eng"}

execute if score @s up.fuel.1 matches 0 run team modify fuelP9 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP9 prefix {"text":"Storage: Fuel Eng"}
execute if score @s low.fuel.0 matches 0 run team modify fuelP9 suffix {"text":" (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP9 prefix {"text":"Lower Engine: Fuel Eng"}

execute if score @s low.fuel.1 matches 1 run team modify fuelP9 suffix {"text":" (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP9 color green
