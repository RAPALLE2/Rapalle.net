
scoreboard players add @s fix.wiring 1

execute unless score @s adm.wiring matches 0 unless score @s nav.wiring matches 0 run function amongus:tasks/wires/caf/newa
execute if score @s adm.wiring matches 1 run function amongus:tasks/wires/caf/newb
execute if score @s nav.wiring matches 1 run function amongus:tasks/wires/caf/newc
