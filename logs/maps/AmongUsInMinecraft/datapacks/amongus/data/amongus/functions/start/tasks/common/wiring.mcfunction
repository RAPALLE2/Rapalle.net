
scoreboard players set @s fix.wiring 0

scoreboard players reset bool temp

execute store success score bool temp if predicate amongus:rng_0_5 run scoreboard players set @s elec.wiring 0

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_6 run scoreboard players set @s strg.wiring 0

execute unless score bool temp matches 1 store success score bool temp if predicate amongus:rng_0_75 run scoreboard players set @s adm.wiring 0

execute unless score bool temp matches 1 run scoreboard players set @s nav.wiring 0
