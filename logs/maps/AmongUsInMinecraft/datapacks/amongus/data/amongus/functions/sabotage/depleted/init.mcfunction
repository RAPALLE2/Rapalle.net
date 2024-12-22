
bossbar set amongus:depleted players @a[tag=ingame]

execute store result bossbar amongus:depleted value run scoreboard players get countdown sabotage

scoreboard players set depleted sabotage 1

scoreboard players set countdown sabotage 30
scoreboard players set currentPlayer sabotage 0
scoreboard players set neededPlayer sabotage 2

function amongus:sabotage/depleted/schedule/wba

summon villager 37 19.9 24.15 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["amongus.sab","o2.sab.a"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:9999999,ShowParticles:0b}],Offers:{}}
summon villager 26 19.9 33.15 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["amongus.sab","o2.sab.b"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:9999999,ShowParticles:0b}],Offers:{}}

summon shulker 26 21 33 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Team:"red",DeathLootTable:"empty",NoAI:1b,Peek:0b,AttachFace:0b,Color:14b,Tags:["amongus.sab"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:9999,ShowParticles:0b}]}
summon shulker 37 21 24 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Team:"red",DeathLootTable:"empty",NoAI:1b,Peek:0b,AttachFace:0b,Color:14b,Tags:["amongus.sab"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:9999,ShowParticles:0b}]}
