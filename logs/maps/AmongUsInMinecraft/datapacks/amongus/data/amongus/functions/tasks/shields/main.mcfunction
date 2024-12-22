
execute if score @s failed matches 1.. run function amongus:tasks/shields/end


execute if score @s shldA matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldA matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldA matches 1 run scoreboard players add @s shldA 1
execute if score @s shldB matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldB matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldB matches 1 run scoreboard players add @s shldB 1
execute if score @s shldC matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldC matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldC matches 1 run scoreboard players add @s shldC 1
execute if score @s shldD matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldD matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldD matches 1 run scoreboard players add @s shldD 1
execute if score @s shldE matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldE matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldE matches 1 run scoreboard players add @s shldE 1
execute if score @s shldF matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldF matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldF matches 1 run scoreboard players add @s shldF 1
execute if score @s shldG matches 1 run scoreboard players add @s shlds.primed 1
execute if score @s shldG matches 1 run function amongus:tasks/shields/monitor
execute if score @s shldG matches 1 run scoreboard players add @s shldG 1

execute if score @s shlds.primed matches 3 if score tick data matches 10 run function amongus:tasks/shields/end
