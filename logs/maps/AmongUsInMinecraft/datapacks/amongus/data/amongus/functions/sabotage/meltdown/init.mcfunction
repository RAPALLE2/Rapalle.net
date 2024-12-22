
bossbar set amongus:meltdown players @a[tag=ingame]

execute store result bossbar amongus:meltdown value run scoreboard players get countdown sabotage

scoreboard players set meltdown sabotage 1

scoreboard players set countdown sabotage 30
scoreboard players set currentPlayer sabotage 0
scoreboard players set neededPlayer sabotage 2

function amongus:sabotage/meltdown/schedule/wba

summon shulker 100 21 24 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Team:"red",DeathLootTable:"empty",NoAI:1b,Peek:0b,AttachFace:0b,Color:14b,Tags:["amongus.sab"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:9999,ShowParticles:0b}]}
summon shulker 101 21 42 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Team:"red",DeathLootTable:"empty",NoAI:1b,Peek:0b,AttachFace:0b,Color:14b,Tags:["amongus.sab"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:9999,ShowParticles:0b}]}
