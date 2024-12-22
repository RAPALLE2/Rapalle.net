
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set nes dtp10 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP10 prefix {"text":"Upper Engine: Fuel Engi"}

execute if score @s up.fuel.1 matches 0 run team modify fuelP10 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP10 prefix {"text":"Storage: Fuel Engi"}
execute if score @s low.fuel.0 matches 0 run team modify fuelP10 suffix {"text":" (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP10 prefix {"text":"Lower Engine: Fuel Engi"}

execute if score @s low.fuel.1 matches 1 run team modify fuelP10 suffix {"text":" (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP10 color green
