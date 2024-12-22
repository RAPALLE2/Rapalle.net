
execute if score @s kill matches 1.. run tag @s add temp_kill

execute if entity @s[tag=temp_kill] at @s run function amongus:kill/try

execute unless entity @s[tag=venting] if score @s kill matches ..-1 if score tick data matches 20 run function amongus:kill/cooldown
