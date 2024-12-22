
scoreboard players add @s fix.wiring 1

scoreboard players set bool temp 0

execute store success score bool temp if predicate amongus:rng_0_375 run scoreboard players set @s adm.wiring 0

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_6 run scoreboard players set @s nav.wiring 0

execute unless score bool temp matches 1 run scoreboard players set @s caf.wiring 0
