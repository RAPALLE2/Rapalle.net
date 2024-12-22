
scoreboard players set bool temp 0

execute store success score bool temp if predicate amongus:rng_0_1 run scoreboard players set @s row.align 1
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_11111 run scoreboard players set @s row.align 2
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_125 run scoreboard players set @s row.align 3
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_14285 run scoreboard players set @s row.align 4
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_16666 run scoreboard players set @s row.align 5
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_2 run scoreboard players set @s row.align 13
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_25 run scoreboard players set @s row.align 14
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_33333 run scoreboard players set @s row.align 15
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_5 run scoreboard players set @s row.align 16
execute unless score bool temp matches 1 run scoreboard players set @s row.align 17


scoreboard players set bool temp 0

execute store success score bool temp if predicate amongus:rng_0_125 run scoreboard players set @s extend.align 1
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_14285 run scoreboard players set @s extend.align 2
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_16666 run scoreboard players set @s extend.align 3
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_2 run scoreboard players set @s extend.align 4
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_25 run scoreboard players set @s extend.align 5
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_33333 run scoreboard players set @s extend.align 6
execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_5 run scoreboard players set @s extend.align 7
execute unless score bool temp matches 1 run scoreboard players set @s extend.align 8
