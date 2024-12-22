
advancement revoke @s only amongus:admcard

tag @s add busy

scoreboard players set @s busy 1

scoreboard players set @s adm.card 0

scoreboard players set @s success.card 0
scoreboard players set @s fail.card 0

scoreboard players reset @s card1
scoreboard players reset @s card2
scoreboard players reset @s card3
scoreboard players reset @s card4
scoreboard players reset @s card5
scoreboard players reset @s card6
scoreboard players reset @s card7
scoreboard players reset @s card8
scoreboard players reset @s card9
scoreboard players reset @s card10
scoreboard players reset @s card11
scoreboard players reset @s card12
scoreboard players reset @s card13
scoreboard players reset @s card14
scoreboard players reset @s card15
scoreboard players reset @s card16
scoreboard players reset @s card17
scoreboard players reset @s card18
scoreboard players reset @s card19
scoreboard players reset @s card20
scoreboard players reset @s card21
scoreboard players reset @s card22
scoreboard players reset @s card23
scoreboard players reset @s card24
scoreboard players reset @s card25
scoreboard players reset @s card26
scoreboard players reset @s card27
scoreboard players reset @s card28

scoreboard players set @s card1 0
scoreboard players set @s card2 0
scoreboard players set @s card3 0
scoreboard players set @s card4 0
scoreboard players set @s card5 0
scoreboard players set @s card6 0
scoreboard players set @s card7 0
scoreboard players set @s card8 0
scoreboard players set @s card9 0
scoreboard players set @s card10 0
scoreboard players set @s card11 0
scoreboard players set @s card12 0
scoreboard players set @s card13 0
scoreboard players set @s card14 0
scoreboard players set @s card15 0
scoreboard players set @s card16 0
scoreboard players set @s card17 0
scoreboard players set @s card18 0
scoreboard players set @s card19 0
scoreboard players set @s card20 0
scoreboard players set @s card21 0
scoreboard players set @s card22 0
scoreboard players set @s card23 0
scoreboard players set @s card24 0
scoreboard players set @s card25 0
scoreboard players set @s card26 0
scoreboard players set @s card27 0
scoreboard players set @s card28 0

function amongus:tasks/card/rng28

scoreboard players set bool adm.card 0

execute store success score bool adm.card if predicate amongus:rng_0_2 run function amongus:tasks/card/o1
execute unless score bool adm.card matches 1 store success score bool adm.card if predicate amongus:rng_0_25 run function amongus:tasks/card/o2
execute unless score bool adm.card matches 1 store success score bool adm.card if predicate amongus:rng_0_33333 run function amongus:tasks/card/o3
execute unless score bool adm.card matches 1 store success score bool adm.card if predicate amongus:rng_0_5 run function amongus:tasks/card/o4
execute unless score bool adm.card matches 1 store success score bool adm.card if predicate amongus:rng_1 run function amongus:tasks/card/o5

scoreboard players enable @s card1
scoreboard players enable @s card2
scoreboard players enable @s card3
scoreboard players enable @s card4
scoreboard players enable @s card5
scoreboard players enable @s card6
scoreboard players enable @s card7
scoreboard players enable @s card8
scoreboard players enable @s card9
scoreboard players enable @s card10
scoreboard players enable @s card11
scoreboard players enable @s card12
scoreboard players enable @s card13
scoreboard players enable @s card14
scoreboard players enable @s card15
scoreboard players enable @s card16
scoreboard players enable @s card17
scoreboard players enable @s card18
scoreboard players enable @s card19
scoreboard players enable @s card20
scoreboard players enable @s card21
scoreboard players enable @s card22
scoreboard players enable @s card23
scoreboard players enable @s card24
scoreboard players enable @s card25
scoreboard players enable @s card26
scoreboard players enable @s card27
scoreboard players enable @s card28
