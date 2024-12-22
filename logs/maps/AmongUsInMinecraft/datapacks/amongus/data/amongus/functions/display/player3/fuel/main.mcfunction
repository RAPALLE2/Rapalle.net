
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set uel dtp3 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP3 prefix {"text":"Upper Engine: F"}

execute if score @s up.fuel.1 matches 0 run team modify fuelP3 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP3 prefix {"text":"Storage: F"}
execute if score @s low.fuel.0 matches 0 run team modify fuelP3 suffix {"text":" Engines (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP3 prefix {"text":"Lower Engine: F"}

execute if score @s low.fuel.1 matches 1 run team modify fuelP3 suffix {"text":" Engines (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP3 color green
