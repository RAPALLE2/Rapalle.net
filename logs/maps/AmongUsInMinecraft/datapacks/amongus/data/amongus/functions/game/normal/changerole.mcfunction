
tag @s add temp_changeRole

execute if entity @s[tag=temp_changeRole] if entity @s[tag=impostor] run function amongus:game/normal/changetocrew
execute if entity @s[tag=temp_changeRole] if entity @s[tag=crewmate] run function amongus:game/normal/changetoimpostor

tag @s remove temp_changeRole
