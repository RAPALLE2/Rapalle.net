
execute if score @s failed matches 1.. run function amongus:tasks/sample/end

execute if score @s start.sample matches 1 if score @s timer.sample matches 1.. if score tick data matches 10 run scoreboard players remove @s timer.sample 1

execute if entity @s[tag=inspectSample] if score @s timer.sample matches 59 if score tick data matches 10..19 run function amongus:tasks/sample/f1
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 59 if score tick data matches 20.. run function amongus:tasks/sample/f2
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 59 if score tick data matches 0..9 run function amongus:tasks/sample/f2
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 58 if score tick data matches 10..19 run function amongus:tasks/sample/f3
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 58 if score tick data matches 20.. run function amongus:tasks/sample/f4
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 58 if score tick data matches 0..9 run function amongus:tasks/sample/f4
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 57 if score tick data matches 10..19 run function amongus:tasks/sample/f5
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 57 if score tick data matches 20.. run function amongus:tasks/sample/empty
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 57 if score tick data matches 0..9 run function amongus:tasks/sample/empty
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 49..56 run function amongus:tasks/sample/eta1
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 41..48 run function amongus:tasks/sample/eta2
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 33..40 run function amongus:tasks/sample/eta3
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 25..32 run function amongus:tasks/sample/eta4
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 17..24 run function amongus:tasks/sample/eta5
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 9..16 run function amongus:tasks/sample/eta6
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 1..8 run function amongus:tasks/sample/eta7

execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 run scoreboard players enable @s inspect
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 run scoreboard players set bool med.sample 0
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 store success score bool med.sample if predicate amongus:rng_0_2 run function amongus:tasks/sample/r1
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 unless score bool med.sample matches 1 store success score bool med.sample if predicate amongus:rng_0_25 run function amongus:tasks/sample/r2
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 unless score bool med.sample matches 1 store success score bool med.sample if predicate amongus:rng_0_33333 run function amongus:tasks/sample/r3
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 unless score bool med.sample matches 1 store success score bool med.sample if predicate amongus:rng_0_5 run function amongus:tasks/sample/r4
execute if entity @s[tag=inspectSample] if score @s timer.sample matches 0 unless score bool med.sample matches 1 store success score bool med.sample if predicate amongus:rng_1 run function amongus:tasks/sample/r5

execute if score @s inspect matches 1.. run function amongus:tasks/sample/end
