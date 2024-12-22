
scoreboard players set countN temp 0

execute if score @s rnA matches -1 run scoreboard players add countN temp 1
execute if score @s rnB matches -1 run scoreboard players add countN temp 1
execute if score @s rnC matches -1 run scoreboard players add countN temp 1
execute if score @s rnD matches -1 run scoreboard players add countN temp 1
execute if score @s rnE matches -1 run scoreboard players add countN temp 1
execute if score @s rnF matches -1 run scoreboard players add countN temp 1
execute if score @s rnG matches -1 run scoreboard players add countN temp 1
execute if score @s rnH matches -1 run scoreboard players add countN temp 1
execute if score @s rnI matches -1 run scoreboard players add countN temp 1

scoreboard players set countP temp 0

execute if score @s rnA matches 1 run scoreboard players add countP temp 1
execute if score @s rnB matches 1 run scoreboard players add countP temp 1
execute if score @s rnC matches 1 run scoreboard players add countP temp 1
execute if score @s rnD matches 1 run scoreboard players add countP temp 1
execute if score @s rnE matches 1 run scoreboard players add countP temp 1
execute if score @s rnF matches 1 run scoreboard players add countP temp 1
execute if score @s rnG matches 1 run scoreboard players add countP temp 1
execute if score @s rnH matches 1 run scoreboard players add countP temp 1
execute if score @s rnI matches 1 run scoreboard players add countP temp 1

execute if score countN temp matches 9 run scoreboard players set @s ani.timer 34
execute if score countP temp matches 9 run scoreboard players set @s ani.timer 4

execute if score countN temp matches 9 run scoreboard players reset @s cali.btn
execute if score countN temp matches 9 run scoreboard players set @s cali.btn 0
execute if score countP temp matches 9 run scoreboard players reset @s cali.btn
execute if score countP temp matches 9 run scoreboard players set @s cali.btn 0
