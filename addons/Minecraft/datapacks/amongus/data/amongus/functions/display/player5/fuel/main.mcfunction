
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set ue dtp5 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP5 prefix {"text":"Upper Engine: F"}

execute if score @s up.fuel.1 matches 0 run team modify fuelP5 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP5 prefix {"text":"Storage: F"}
execute if score @s low.fuel.0 matches 0 run team modify fuelP5 suffix {"text":"l Engines (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP5 prefix {"text":"Lower Engine: F"}

execute if score @s low.fuel.1 matches 1 run team modify fuelP5 suffix {"text":"l Engines (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP5 color green
