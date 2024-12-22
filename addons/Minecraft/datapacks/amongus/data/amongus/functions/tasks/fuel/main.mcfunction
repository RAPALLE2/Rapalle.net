

execute as @a[scores={up.fill=0..}] if entity @s[tag=busy] run function amongus:tasks/fuel/up/main
execute as @a[scores={low.fill=0..}] if entity @s[tag=busy] run function amongus:tasks/fuel/low/main
