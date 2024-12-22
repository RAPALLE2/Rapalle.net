
### posX
execute store result score temp posX run data get entity @s Pos[0]

scoreboard players operation temp temp = @s posX

execute unless entity @s[tag=check_failed] if score temp posX = temp temp run tag @s add check_passed

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posX >= temp temp run scoreboard players add temp temp 1
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posX >= temp temp run tag @s add check_failed

scoreboard players operation temp temp = @s posX

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posX <= temp temp run scoreboard players remove temp temp 1
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posX <= temp temp run tag @s add check_failed

tag @s remove check_passed

### posY
execute store result score temp posY run data get entity @s Pos[1]

scoreboard players operation temp temp = @s posY

execute unless entity @s[tag=check_failed] if score temp posY = temp temp run tag @s add check_passed

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posY >= temp temp run scoreboard players add temp temp 1
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posY >= temp temp run tag @s add check_failed

scoreboard players operation temp temp = @s posY

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posY <= temp temp run scoreboard players remove temp temp 1
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posY <= temp temp run tag @s add check_failed

tag @s remove check_passed

### posZ
execute store result score temp posZ run data get entity @s Pos[2]

scoreboard players operation temp temp = @s posZ

execute unless entity @s[tag=check_failed] if score temp posZ = temp temp run tag @s add check_passed

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posZ >= temp temp run scoreboard players add temp temp 1
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posZ >= temp temp run tag @s add check_failed

scoreboard players operation temp temp = @s posZ

execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posZ <= temp temp run scoreboard players remove temp temp 1
execute unless entity @s[tag=check_failed] unless entity @s[tag=check_passed] if score temp posZ <= temp temp run tag @s add check_failed

tag @s remove check_passed
