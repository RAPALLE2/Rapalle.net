
### rotation0
execute store result score temp rotation0 run data get entity @s Rotation[0]

scoreboard players operation temp temp = @s rotation0

execute if score temp rotation0 = temp temp run tag @s add check_passed

execute unless entity @s[tag=check_passed] if score temp rotation0 >= temp temp run scoreboard players add temp temp 10
execute unless entity @s[tag=check_passed] if score temp rotation0 >= temp temp run tag @s add check_failed

scoreboard players operation temp temp = @s rotation0

execute unless entity @s[tag=check_passed] unless entity @s[tag=check_failed] if score temp rotation0 <= temp temp run scoreboard players remove temp temp 10
execute unless entity @s[tag=check_passed] unless entity @s[tag=check_failed] if score temp rotation0 <= temp temp run tag @s add check_failed

tag @s remove check_passed

### rotation1
execute store result score temp rotation1 run data get entity @s Rotation[1]

scoreboard players operation temp temp = @s rotation1

execute unless entity @s[tag=check_failed] if score temp rotation1 = temp temp run tag @s add check_passed

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp rotation1 >= temp temp run scoreboard players add temp temp 10
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp rotation1 >= temp temp run tag @s add check_failed

scoreboard players operation temp temp = @s rotation1

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp rotation1 <= temp temp run scoreboard players remove temp temp 10
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp rotation1 <= temp temp run tag @s add check_failed

tag @s remove check_passed
