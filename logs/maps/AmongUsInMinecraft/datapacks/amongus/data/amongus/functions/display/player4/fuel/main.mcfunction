
execute if score @s up.fuel.0 matches 0..1 run scoreboard players set Fu dtp4 0

execute if score @s up.fuel.1 matches 0 run team modify fuelP4 prefix {"text":"Upper Engine: "}

execute if score @s up.fuel.1 matches 0 run team modify fuelP4 color gold

execute if score @s low.fuel.0 matches 0 run team modify fuelP4 prefix {"text":"Storage: "}
execute if score @s low.fuel.0 matches 0 run team modify fuelP4 suffix {"text":"el Engines (1/2)"}

execute if score @s low.fuel.1 matches 0 run team modify fuelP4 prefix {"text":"Lower Engine: "}

execute if score @s low.fuel.1 matches 1 run team modify fuelP4 suffix {"text":"el Engines (2/2)"}
execute if score @s low.fuel.1 matches 1 run team modify fuelP4 color green
