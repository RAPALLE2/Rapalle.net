

execute as @a if entity @s[nbt={Inventory:[{Slot:-106b,tag:{OverviewMap:1}}]}] run tag @s add showOvM
execute as @a[tag=showOvM] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{OverviewMap:1}}]}] if score tick data matches 20 run scoreboard players set @s showOvM 1
execute as @a[tag=showOvM] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{OverviewMap:1}}]}] unless score tick data matches 20 run scoreboard players set @s showOvM 0
execute as @a[tag=showOvM] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{OverviewMap:1}}]}] run scoreboard players set @s showOvM 2
execute as @a[scores={showOvM=2}] run tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]
execute as @a[scores={showOvM=2}] run tag @s remove showOvM
execute as @a[scores={showOvM=2}] run scoreboard players set @s showOvM 0


execute as @a[scores={color=1..}] if score @s showOvM matches 1 run function amongus:tasks/overview/player
