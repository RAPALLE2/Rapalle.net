

scoreboard players reset bool temp
execute store success score bool temp if predicate amongus:rng_0_5 run function amongus:start/tasks/common/card
execute unless score bool temp matches 1 run function amongus:start/tasks/common/wiring
