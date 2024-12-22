


execute if score ongoing sabotage matches 0 run scoreboard players set cooldown sabotage -29
execute if score ongoing sabotage matches 0 run scoreboard players reset ongoing sabotage

execute if score cooldown sabotage matches ..-1 if score tick data matches 10 run scoreboard players add cooldown sabotage 1

execute if score cooldown sabotage matches 0 run scoreboard players enable @a[tag=impostor] activate_sab
execute if score cooldown sabotage matches 0 run scoreboard players reset cooldown sabotage
