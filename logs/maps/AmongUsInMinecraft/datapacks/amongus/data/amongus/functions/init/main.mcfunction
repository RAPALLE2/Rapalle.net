
forceload add 3 2 109 61

function amongus:sabotage/disable
kill @e[type=!minecraft:player]

function amongus:reset/scoreboard
execute as @a run function amongus:reset/tag
function amongus:reset/bossbar
function amongus:reset/team

effect clear @a
worldborder warning distance 0

function amongus:init/scoreboard
function amongus:init/bossbar
function amongus:init/team

gamerule sendCommandFeedback false
setworldspawn 50 117 32 180

function amongus:lobby/signs/init

function amongus:sabotage/door/open/all
fill 76 21 18 73 20 18 lever[powered=false]
function amongus:settings/display/init
setblock 35 21 21 minecraft:white_stained_glass

summon painting 52 120 25 {NoGravity:1b,Facing:0b,Invulnerable:1b,Motive:"minecraft:plant"}
summon painting 52 118 25 {NoGravity:1b,Facing:0b,Invulnerable:1b,Motive:"minecraft:wanderer"}
summon painting 49 119 25 {NoGravity:1b,Facing:0b,Invulnerable:1b,Motive:"minecraft:donkey_kong"}

summon painting 51 119 39 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:donkey_kong"}
summon painting 48 120 39 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:plant"}
summon painting 48 118 39 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:wanderer"}

summon painting 42 120 31 {NoGravity:1b,Facing:3b,Invulnerable:1b,Motive:"minecraft:aztec2"}
summon painting 42 120 33 {NoGravity:1b,Facing:3b,Invulnerable:1b,Motive:"minecraft:courbet"}
summon painting 42 118 31 {NoGravity:1b,Facing:3b,Invulnerable:1b,Motive:"minecraft:graham"}
summon painting 42 118 33 {NoGravity:1b,Facing:3b,Invulnerable:1b,Motive:"minecraft:match"}

summon painting 76 117 35 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:fighters"}
summon painting 77 119 35 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:creebet"}
summon painting 75 119 35 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:pool"}
summon painting 73 119 35 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:alban"}
summon painting 73 118 35 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:wasteland"}
summon painting 73 117 35 {NoGravity:1b,Facing:2b,Invulnerable:1b,Motive:"minecraft:aztec"}

scoreboard players set @a left 1
