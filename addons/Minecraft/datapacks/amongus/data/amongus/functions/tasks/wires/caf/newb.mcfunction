
scoreboard players set bool temp 0

execute store success score bool temp if predicate amongus:rng_0_76923 run scoreboard players set @s sec.wiring 0

execute unless score bool temp matches 1 run scoreboard players set @s nav.wiring 0
