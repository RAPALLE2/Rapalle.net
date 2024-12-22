
scoreboard players add @s fix.wiring 1

scoreboard players set bool temp 0

execute store success score bool temp if predicate amongus:rng_0_28571 run scoreboard players set @s strg.wiring 0

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_42 run scoreboard players set @s adm.wiring 0

execute unless score bool temp matches 1 run scoreboard players set @s caf.wiring 0
