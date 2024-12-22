
bossbar set amongus:depleted players

execute unless score currentPlayer sabotage = neededPlayer sabotage unless score preventWin data matches 1..2 run function amongus:win/schedule/impostorwin

scoreboard players set countdown sabotage 30
scoreboard players set depleted sabotage 0
scoreboard players set currentPlayer sabotage 0

worldborder warning distance 0

scoreboard players set ongoing sabotage 0

scoreboard players set playerA sabotage 0
scoreboard players set playerB sabotage 0
tp @e[type=minecraft:villager,tag=o2.sab.a] 0 200 0
tp @e[type=minecraft:villager,tag=o2.sab.b] 0 200 0

kill @e[type=minecraft:villager,tag=o2.sab.a]
kill @e[type=minecraft:villager,tag=o2.sab.b]

tp @e[type=minecraft:shulker,tag=amongus.sab] 0 200 0
tp @e[type=minecraft:shulker,tag=amongus.sab] 0 200 0

kill @e[type=minecraft:shulker,tag=amongus.sab]
kill @e[type=minecraft:shulker,tag=amongus.sab]

function amongus:sabotage/depleted/schedule/wbend
