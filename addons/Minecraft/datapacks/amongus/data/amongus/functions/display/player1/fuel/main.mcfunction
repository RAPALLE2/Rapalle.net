
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set Fuel dtp1 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP1 prefix {"text":"Upper Engine: "}

execute if score @s up.fuel.1 matches 0 run team modify fuelP1 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP1 prefix {"text":"Storage: "}
execute if score @s low.fuel.0 matches 0 run team modify fuelP1 suffix {"text":" Engines (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP1 prefix {"text":"Lower Engine: "}

execute if score @s low.fuel.1 matches 1 run team modify fuelP1 suffix {"text":" Engines (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP1 color green
