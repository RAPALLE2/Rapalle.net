
execute if score tick data matches 11.. run worldborder warning distance 0
execute if score tick data matches 0..10 run worldborder warning distance 2147483647

scoreboard players set currentPlayer sabotage 0
execute if score playerA sabotage matches 1 run scoreboard players add currentPlayer sabotage 1
execute if score playerB sabotage matches 1 run scoreboard players add currentPlayer sabotage 1

execute if score currentPlayer sabotage = neededPlayer sabotage run function amongus:sabotage/depleted/end

execute store result bossbar amongus:depleted value run scoreboard players get countdown sabotage

execute if score tick data matches 20 run scoreboard players remove countdown sabotage 1

execute if score countdown sabotage matches ..-1 run function amongus:sabotage/depleted/end
