
advancement revoke @s only amongus:reacstart

tag @s add busy

scoreboard players set @s busy 1

scoreboard players set @s reac.start 0

execute as @s run function amongus:tasks/reactor/rng9

function amongus:tasks/reactor/animation/empty
function amongus:tasks/reactor/canvas

scoreboard players set @s reactor.prog 10
scoreboard players set @s ani.timer -1
