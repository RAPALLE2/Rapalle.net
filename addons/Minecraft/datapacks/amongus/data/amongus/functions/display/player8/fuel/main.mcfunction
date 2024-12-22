
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set gines dtp8 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP8 prefix {"text":"Upper Engine: Fuel En"}

execute if score @s up.fuel.1 matches 0 run team modify fuelP8 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP8 prefix {"text":"Storage: Fuel En"}
execute if score @s low.fuel.0 matches 0 run team modify fuelP8 suffix {"text":" (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP8 prefix {"text":"Lower Engine: Fuel En"}

execute if score @s low.fuel.1 matches 1 run team modify fuelP8 suffix {"text":" (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP8 color green
