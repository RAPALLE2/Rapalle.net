
scoreboard players add @s fix.wiring 1

execute unless score @s nav.wiring matches 0 run function amongus:tasks/wires/nav/new2a
execute if score @s nav.wiring matches 1 run function amongus:tasks/wires/nav/new2b
