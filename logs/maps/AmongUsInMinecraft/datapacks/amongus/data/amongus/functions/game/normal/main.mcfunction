
### inventory
execute if score tick data matches 5 unless entity @a[tag=initiator] as @a[tag=ingame] at @s run function amongus:inventory/main
execute if score tick data matches 10 unless entity @a[tag=initiator] as @a[tag=ingame] at @s run function amongus:inventory/main
execute if score tick data matches 15 unless entity @a[tag=initiator] as @a[tag=ingame] at @s run function amongus:inventory/main
execute if score tick data matches 20 unless entity @a[tag=initiator] as @a[tag=ingame] at @s run function amongus:inventory/main

execute unless score fix sabotage matches 1 unless score comms sabotage matches 1 if score tick data matches 5 positioned 43 20 16 if entity @a[dx=1,dy=2,dz=3] as @e[tag=admin_map_anchor,limit=1,sort=nearest] at @s run function amongus:adm/main
execute unless score fix sabotage matches 1 unless score comms sabotage matches 1 if score tick data matches 15 positioned 43 20 16 if entity @a[dx=1,dy=2,dz=3] as @e[tag=admin_map_anchor,limit=1,sort=nearest] at @s run function amongus:adm/main

execute if score showDisplay data matches 1 if score tick data matches 5 run function amongus:display/main
execute if score showDisplay data matches 1 if score tick data matches 15 run function amongus:display/main

execute unless score emerg_cd data matches ..0 if score tick data matches 10 run scoreboard players remove emerg_cd data 1

execute unless score fix sabotage matches 1 unless score comms sabotage matches 1 run function amongus:cams/main

execute if score camsAlwaysOn data matches 1 run function amongus:cams/main

execute as @a[tag=ingame] at @s run function amongus:game/show_pos

### tasks
function amongus:tasks/main

### init vote
execute if score vote_init data matches 1 run function amongus:vote/init

### impostor kill
execute as @a[tag=impostor] unless entity @s[tag=ghost] run function amongus:kill/main

### venting
execute as @a[tag=impostor] at @s run function amongus:vents/main

### pos
execute as @e[tag=ingame] at @s run function amongus:game/pos

### task particle
execute if score tick data matches 5 as @a[tag=ingame] unless entity @s[tag=impostor] run function amongus:particle/main
execute if score tick data matches 10 as @a[tag=ingame] unless entity @s[tag=impostor] run function amongus:particle/main
execute if score tick data matches 15 as @a[tag=ingame] unless entity @s[tag=impostor] run function amongus:particle/main
execute if score tick data matches 20 as @a[tag=ingame] unless entity @s[tag=impostor] run function amongus:particle/main

### report DeadBody
function amongus:report/main

### sabotages
function amongus:sabotage/main

execute if score showMeetCD pos matches 1 unless entity @a[scores={pos=4}] run function amongus:particle/meet/kill
execute unless score showMeetCD pos matches 1 if entity @a[scores={pos=4}] run function amongus:particle/meet/init
function amongus:particle/meet/main

execute if score freeplay data matches 1 as @a[tag=ingame] run function amongus:game/normal/freeplay
