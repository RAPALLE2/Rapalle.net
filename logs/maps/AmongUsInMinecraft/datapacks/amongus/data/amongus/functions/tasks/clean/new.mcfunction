
scoreboard players set bool leafs.cleaned 0

execute store success score bool leafs.cleaned if predicate amongus:rng_0_06666 run scoreboard players set @s leafA 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_07142 run scoreboard players set @s leafB 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_07692 run scoreboard players set @s leafC 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_08333 run scoreboard players set @s leafD 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_09090 run scoreboard players set @s leafE 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_1 run scoreboard players set @s leafF 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_11111 run scoreboard players set @s leafG 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_125 run scoreboard players set @s leafG 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_14285 run scoreboard players set @s leafI 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_166666 run scoreboard players set @s leafJ 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_2 run scoreboard players set @s leafK 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_25 run scoreboard players set @s leafL 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_33333 run scoreboard players set @s leafM 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_0_5 run scoreboard players set @s leafN 1
execute unless score bool leafs.cleaned matches 1 store success score bool leafs.cleaned if predicate amongus:rng_1 run scoreboard players set @s leafO 1

execute if score @s leafA matches 1 run function amongus:tasks/clean/o1
execute if score @s leafA matches 1 run scoreboard players enable @s leafA
execute if score @s leafB matches 1 run function amongus:tasks/clean/o2
execute if score @s leafB matches 1 run scoreboard players enable @s leafB
execute if score @s leafC matches 1 run function amongus:tasks/clean/o3
execute if score @s leafC matches 1 run scoreboard players enable @s leafC
execute if score @s leafD matches 1 run function amongus:tasks/clean/o4
execute if score @s leafD matches 1 run scoreboard players enable @s leafD
execute if score @s leafE matches 1 run function amongus:tasks/clean/o5
execute if score @s leafE matches 1 run scoreboard players enable @s leafE
execute if score @s leafF matches 1 run function amongus:tasks/clean/o6
execute if score @s leafF matches 1 run scoreboard players enable @s leafF
execute if score @s leafG matches 1 run function amongus:tasks/clean/o7
execute if score @s leafG matches 1 run scoreboard players enable @s leafG
execute if score @s leafH matches 1 run function amongus:tasks/clean/o8
execute if score @s leafH matches 1 run scoreboard players enable @s leafH
execute if score @s leafI matches 1 run function amongus:tasks/clean/o9
execute if score @s leafI matches 1 run scoreboard players enable @s leafI
execute if score @s leafJ matches 1 run function amongus:tasks/clean/o10
execute if score @s leafJ matches 1 run scoreboard players enable @s leafJ
execute if score @s leafK matches 1 run function amongus:tasks/clean/o11
execute if score @s leafK matches 1 run scoreboard players enable @s leafK
execute if score @s leafL matches 1 run function amongus:tasks/clean/o12
execute if score @s leafL matches 1 run scoreboard players enable @s leafL
execute if score @s leafM matches 1 run function amongus:tasks/clean/o13
execute if score @s leafM matches 1 run scoreboard players enable @s leafM
execute if score @s leafN matches 1 run function amongus:tasks/clean/o14
execute if score @s leafN matches 1 run scoreboard players enable @s leafN
execute if score @s leafO matches 1 run function amongus:tasks/clean/o15
execute if score @s leafO matches 1 run scoreboard players enable @s leafO
