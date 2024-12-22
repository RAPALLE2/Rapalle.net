
execute as @a[scores={busy=1}] run function amongus:tasks/check/init

execute as @a[scores={check=1}] unless score @s scan.timer matches 0.. run function amongus:tasks/check/rotation
execute as @a[scores={check=1}] run function amongus:tasks/check/position

execute as @a[tag=check_failed] run scoreboard players set @s failed 1

execute as @a[tag=check_failed] run scoreboard players set @s check 0

execute as @a[tag=check_failed] run tag @s remove check_failed
