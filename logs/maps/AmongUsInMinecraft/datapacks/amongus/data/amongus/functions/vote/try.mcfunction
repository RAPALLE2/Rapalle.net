
advancement revoke @s only amongus:emergencymeeting

execute if score @s meetings.num matches 1.. unless entity @s[tag=ghost] unless score vote_enable data matches 1 unless score ongoing sabotage matches 1 unless score emerg_cd data matches 1.. run function amongus:vote/call
