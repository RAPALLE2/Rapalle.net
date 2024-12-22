
function amongus:game/effects

execute unless score vote_enable data matches 1 run function amongus:game/normal/main

execute if score vote_init data matches 1 run function amongus:vote/init

execute if score vote_enable data matches 1 run function amongus:vote/main

execute as @a[tag=!ingame] unless score @s spectate matches 0..1 run function amongus:spectate/enable
execute as @a[tag=!ingame,scores={spectate=1}] run function amongus:spectate/init

### win
execute if score timePlayed data matches 300.. run function amongus:win/try
