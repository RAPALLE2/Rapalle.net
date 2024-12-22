
execute as @a[tag=ingame] unless entity @s[tag=ghost] at @s if score @s report matches 1 if entity @e[tag=DeadBody,distance=..3] run function amongus:report/init


execute as @a[tag=ingame] unless entity @s[tag=ghost] at @s if score @s report matches 1 unless entity @e[tag=DeadBody,distance=..3,limit=1] run scoreboard players set @s report 0

execute as @a[tag=initiator] if score @s report matches ..-2 if score tick data matches 10 run scoreboard players add @s report 1

execute as @a[tag=initiator] if score @s report matches -1 run function amongus:vote/init
