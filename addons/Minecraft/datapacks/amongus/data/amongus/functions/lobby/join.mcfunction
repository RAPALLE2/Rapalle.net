
execute if score join_possible data matches 1 as @a[tag=!joined] unless score @s join matches 1.. run scoreboard players enable @s join
execute as @a[scores={join=1..},tag=!joined] if score join_possible data matches 0 run scoreboard players set @s join 0
execute as @a[scores={join=1..},tag=!joined] if score join_possible data matches 1 run tag @s add joining

execute as @a[tag=joining] run tp @s 75 117 31 180 0
execute as @a[tag=joining] run clear @s
execute as @a[tag=joining] run gamemode adventure
execute as @a[tag=joining] run team join lobby @s
execute as @a[tag=joining] run tag @s add new_player

execute as @a[tag=joining] run tag @s add joined
execute as @a[tag=joining] run tag @s remove joining
