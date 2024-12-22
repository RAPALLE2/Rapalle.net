
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set Engines dtp6 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP6 prefix {"text":"Upper Engine: Fuel "}

execute if score @s up.fuel.1 matches 0 run team modify fuelP6 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP6 prefix {"text":"Storage: Fuel "}
execute if score @s low.fuel.0 matches 0 run team modify fuelP6 suffix {"text":" (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP6 prefix {"text":"Lower Engine: Fuel "}

execute if score @s low.fuel.1 matches 1 run team modify fuelP6 suffix {"text":" (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP6 color green
