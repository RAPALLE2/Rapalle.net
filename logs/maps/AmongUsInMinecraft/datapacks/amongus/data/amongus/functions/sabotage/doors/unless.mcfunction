
execute if score doorA open matches ..-2 if score tick data matches 10 run scoreboard players add doorA open 1
execute if score doorB open matches ..-2 if score tick data matches 10 run scoreboard players add doorB open 1
execute if score doorC open matches ..-2 if score tick data matches 10 run scoreboard players add doorC open 1
execute if score doorD open matches ..-2 if score tick data matches 10 run scoreboard players add doorD open 1
execute if score doorE open matches ..-2 if score tick data matches 10 run scoreboard players add doorE open 1
execute if score doorF open matches ..-2 if score tick data matches 10 run scoreboard players add doorF open 1
execute if score doorG open matches ..-2 if score tick data matches 10 run scoreboard players add doorG open 1

scoreboard players set allDoors open 7
execute if score doorA open matches ..-19 run scoreboard players remove allDoors open 1
execute if score doorB open matches ..-19 run scoreboard players remove allDoors open 1
execute if score doorC open matches ..-19 run scoreboard players remove allDoors open 1
execute if score doorD open matches ..-19 run scoreboard players remove allDoors open 1
execute if score doorE open matches ..-19 run scoreboard players remove allDoors open 1
execute if score doorF open matches ..-19 run scoreboard players remove allDoors open 1
execute if score doorG open matches ..-19 run scoreboard players remove allDoors open 1

execute if score doorA open matches -20 run function amongus:sabotage/doors/open/caf
execute if score doorB open matches -20 run function amongus:sabotage/doors/open/strg
execute if score doorC open matches -20 run function amongus:sabotage/doors/open/up
execute if score doorD open matches -20 run function amongus:sabotage/doors/open/low
execute if score doorE open matches -20 run function amongus:sabotage/doors/open/sec
execute if score doorF open matches -20 run function amongus:sabotage/doors/open/elec
execute if score doorG open matches -20 run function amongus:sabotage/doors/open/med

execute if score doorA open matches -1 run function amongus:sabotage/doors/end/a
execute if score doorB open matches -1 run function amongus:sabotage/doors/end/b
execute if score doorC open matches -1 run function amongus:sabotage/doors/end/c
execute if score doorD open matches -1 run function amongus:sabotage/doors/end/d
execute if score doorE open matches -1 run function amongus:sabotage/doors/end/e
execute if score doorF open matches -1 run function amongus:sabotage/doors/end/f
execute if score doorG open matches -1 run function amongus:sabotage/doors/end/g
