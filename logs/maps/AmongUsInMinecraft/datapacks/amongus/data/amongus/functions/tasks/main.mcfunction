
function amongus:tasks/check/main

function amongus:tasks/bossbar

function amongus:tasks/overview/main

function amongus:tasks/power0/main
function amongus:tasks/power1/main

function amongus:tasks/fuel/main
function amongus:tasks/refuel/main

function amongus:tasks/download/main
function amongus:tasks/upload/main

execute positioned 73 20 34 unless entity @a[tag=scan.used] as @a[distance=..0.5,scores={med.scan=0}] run function amongus:tasks/scan/init
execute as @a[scores={scan.timer=0..}] run function amongus:tasks/scan/main

execute as @a[scores={o2.alarm.prog=1..}] run function amongus:tasks/sabotages/main

execute as @a[scores={cali.btn=0..}] run function amongus:tasks/calibrate/main

execute as @a[scores={row.align=1..}] run function amongus:tasks/align/main

execute as @a[scores={ani.garbage.0=0..}] run function amongus:tasks/garbage/caf/main
execute as @a[scores={ani.garbage.1=0..}] run function amongus:tasks/garbage/strg/main

execute as @a[scores={ani.chute.0=0..}] run function amongus:tasks/chute/o2/main
execute as @a[scores={ani.chute.1=0..}] run function amongus:tasks/chute/strg/main

execute as @a[scores={wireA.connected=0..}] run function amongus:tasks/wires/main

execute as @a[scores={start.sample=0..}] run function amongus:tasks/sample/main

execute as @a[scores={steering=0..}] run function amongus:tasks/steering/main

execute as @a[scores={shlds.primed=0..}] run function amongus:tasks/shields/main

execute as @a[scores={leafs.cleaned=0..}] run function amongus:tasks/clean/main

execute as @a[scores={success.card=0..}] run function amongus:tasks/card/main

execute as @a[scores={scan.timer=0..}] run function amongus:tasks/scan/main

execute as @a[scores={manifolds.prog=0..}] run function amongus:tasks/manifolds/main

execute as @a[scores={reactor.prog=0..}] run function amongus:tasks/reactor/main

execute as @a[scores={rock.row=0..}] run function amongus:tasks/asteroids/main

execute as @a[scores={course.a=1..}] run function amongus:tasks/course/main
execute as @a[scores={course.b=1..}] run function amongus:tasks/course/main
execute as @a[scores={course.c=1..}] run function amongus:tasks/course/main
