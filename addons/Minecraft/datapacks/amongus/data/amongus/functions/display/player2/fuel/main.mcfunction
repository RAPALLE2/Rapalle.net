
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set Fue dtp2 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP2 prefix {"text":"Upper Engine: "}

execute if score @s up.fuel.1 matches 0 run team modify fuelP2 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP2 prefix {"text":"Storage: "}
execute if score @s low.fuel.0 matches 0 run team modify fuelP2 suffix {"text":"l Engines (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP2 prefix {"text":"Lower Engine: "}

execute if score @s low.fuel.1 matches 1 run team modify fuelP2 suffix {"text":"l Engines (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP2 color green
