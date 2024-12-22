
scoreboard players add tick data 1
execute if score tick data matches 21.. run scoreboard players set tick data 0

execute as @a[scores={rick=1..}] run function amongus:rick

execute as @a unless score @s left matches 0 run function amongus:leave

execute as @a unless score @s website matches 0..1 run function amongus:lobby/website/init
execute as @a[scores={website=1}] run function amongus:lobby/website/show

execute positioned 37 117 25 as @a[dx=2,dy=4,dz=14,tag=!adjust_settings] run function amongus:settings/adjust

execute positioned 37 117 25 as @a[tag=adjust_settings] unless entity @s[dx=2,dy=4,dz=14] run function amongus:settings/adjust_end

execute positioned 0 16 0 as @a[gamemode=spectator,tag=game_spectator] unless entity @s[dx=110,dy=29,dz=62] run function amongus:spectate/end

function amongus:data/main

execute if score game_started data matches 0 unless score game_start data matches 1.. run function amongus:lobby/main

execute if score game_started data matches 0 unless score game_start data matches 1.. run function amongus:settings/main

execute if score game_started data matches 0 if score game_start data matches 1 run function amongus:start/main

execute if score game_started data matches 1 run function amongus:game/main

execute unless predicate amongus:time_check run time set 15000

execute as @e[type=item] run data merge entity @s {PickupDelay:-1s}
kill @e[type=item]

effect give @a[scores={food=2..}] minecraft:hunger 1 127 true
effect give @a[scores={food=..3}] minecraft:saturation 1 1 true

#execute positioned 36 116 24 as @a[dx=23,dy=7,dz=16] run effect give @s minecraft:night_vision 5 255 true

stopsound @a music
stopsound @a * minecraft:entity.player.small_fall
stopsound @a * minecraft:entity.player.big_fall
stopsound @a * minecraft:entity.generic.small_fall
stopsound @a * minecraft:entity.generic.big_fall
