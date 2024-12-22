
execute if score @s com.power.0 matches 0 run scoreboard players set ower dtp9 0

execute if score @s com.power.0 matches 0 run team modify powerP9 suffix {"text":" to Communications (0/2)"}

execute if score @s com.power.1 matches 0 run team modify powerP9 color gold

execute if score @s com.power.1 matches 0 run team modify powerP9 prefix {"text":"Communications: Accept Diverted P"}
execute if score @s com.power.1 matches 0 run team modify powerP9 suffix {"text":" (1/2)"}

execute if score @s com.power matches 1 run team modify powerP9 suffix {"text":" (2/2)"}
execute if score @s com.power matches 1 run team modify powerP9 color green
