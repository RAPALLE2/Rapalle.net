

execute if score tick data matches 11.. run worldborder warning distance 0
execute if score tick data matches 0..10 run worldborder warning distance 2147483647

scoreboard players set playerA sabotage 0
scoreboard players set playerB sabotage 0

execute if block 101 21 41 #minecraft:buttons[powered=true] run scoreboard players set playerA sabotage 1
execute if block 100 21 25 #minecraft:buttons[powered=true] run scoreboard players set playerB sabotage 1

scoreboard players set currentPlayer sabotage 0
execute if score playerA sabotage matches 1 run scoreboard players add currentPlayer sabotage 1
execute if score playerB sabotage matches 1 run scoreboard players add currentPlayer sabotage 1

execute if block 101 21 41 #minecraft:buttons[powered=true] if block 100 21 25 #minecraft:buttons[powered=true] if entity @a[tag=!ghost,scores={pos=8}] run function amongus:sabotage/meltdown/end

execute store result bossbar amongus:meltdown value run scoreboard players get countdown sabotage

execute if score tick data matches 20 run scoreboard players remove countdown sabotage 1

execute if score countdown sabotage matches ..-1 run function amongus:sabotage/meltdown/end
