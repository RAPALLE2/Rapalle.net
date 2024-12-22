

execute as @a[scores={up.refuel=0..}] if entity @s[tag=busy] run function amongus:tasks/refuel/up/main
execute as @a[scores={low.refuel=0..}] if entity @s[tag=busy] run function amongus:tasks/refuel/low/main
