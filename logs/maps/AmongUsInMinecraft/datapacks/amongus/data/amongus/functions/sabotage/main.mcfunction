

execute if score meltdown sabotage matches 1 run function amongus:sabotage/meltdown/main

execute if score depleted sabotage matches 1 run function amongus:sabotage/depleted/main

execute if score fix sabotage matches 1 run function amongus:sabotage/fix/main

execute if score comms sabotage matches 1 run function amongus:sabotage/comms/main

execute as @a[tag=impostor] run function amongus:sabotage/map/main

function amongus:sabotage/doors/main

execute if entity @a[scores={activate_sab=1..}] run function amongus:sabotage/crises/init
function amongus:sabotage/crises/main
