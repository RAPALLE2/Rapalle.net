
advancement revoke @s only amongus:navcourse

tag @s add busy

scoreboard players set @s busy 1

scoreboard players reset @s nav.course

scoreboard players set @s nav.course 0

scoreboard players reset @s course.a
scoreboard players reset @s course.b
scoreboard players reset @s course.c

scoreboard players set bool nav.course 0

execute store success score bool nav.course if predicate amongus:rng_1 run function amongus:tasks/course/a/1
execute unless score bool nav.course matches 1 store success score bool nav.course if predicate amongus:rng_0_5 run function amongus:tasks/course/b/1
execute unless score bool nav.course matches 1 store success score bool nav.course if predicate amongus:rng_1 run function amongus:tasks/course/c/1
