
execute if score @s btn.align matches 1 run scoreboard players remove @s row.align 1
execute if score @s btn.align matches 2 run scoreboard players add @s extend.align 1
execute if score @s btn.align matches 3 run scoreboard players remove @s extend.align 1
execute if score @s btn.align matches 4 run scoreboard players add @s row.align 1


execute if score @s row.align matches 18.. run scoreboard players set @s row.align 17
execute if score @s row.align matches ..0 run scoreboard players set @s row.align 1
execute if score @s extend.align matches 9.. run scoreboard players set @s extend.align 8
execute if score @s extend.align matches ..0 run scoreboard players set @s extend.align 1

function amongus:tasks/align/row/main

execute if score @s row.align matches 9 if score @s extend.align matches 6 run scoreboard players set @s ani.timer 4
execute if score @s row.align matches 9 if score @s extend.align matches 6 run scoreboard players reset @s btn.align
