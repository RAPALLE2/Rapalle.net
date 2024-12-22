
advancement revoke @s only amongus:navsteering

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s steering

scoreboard players set @s steering 0

scoreboard players set @s nav.steering 0

scoreboard players set bool steering 0

execute store success score bool steering if predicate amongus:rng_0_166666 run function amongus:tasks/steering/o1
execute unless score bool steering matches 1 store success score bool steering if predicate amongus:rng_0_2 run function amongus:tasks/steering/o2
execute unless score bool steering matches 1 store success score bool steering if predicate amongus:rng_0_25 run function amongus:tasks/steering/o3
execute unless score bool steering matches 1 store success score bool steering if predicate amongus:rng_0_33333 run function amongus:tasks/steering/o4
execute unless score bool steering matches 1 store success score bool steering if predicate amongus:rng_0_5 run function amongus:tasks/steering/o5
execute unless score bool steering matches 1 store success score bool steering if predicate amongus:rng_1 run function amongus:tasks/steering/o6

scoreboard players enable @s steering
