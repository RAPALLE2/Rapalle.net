
scoreboard players set bool temp 0

execute store success score bool temp if predicate amongus:rng_0_125 run function amongus:tasks/asteroids/pos/1

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_rng_0_14285 run function amongus:tasks/asteroids/pos/2

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_16666 run function amongus:tasks/asteroids/pos/3

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_2 run function amongus:tasks/asteroids/pos/4

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_25 run function amongus:tasks/asteroids/pos/5

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_33333 run function amongus:tasks/asteroids/pos/6

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_5 run function amongus:tasks/asteroids/pos/7

execute unless score bool temp matches 1 run function amongus:tasks/asteroids/pos/8
