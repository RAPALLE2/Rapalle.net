
execute if score @s failed matches 1.. run function amongus:tasks/download/nav/end

#execute if score @s download matches 1 run bossbar set amongus:nav.download players @s

execute if score @s download.nav matches 1..800 run scoreboard players add @s download.nav 8
execute if score @s download.nav matches 801..1000 run scoreboard players add @s download.nav 3

scoreboard players operation eta download.nav = @s download.nav
scoreboard players operation eta download.nav /= ten download.nav

execute if score eta download.nav matches 1 run function amongus:tasks/download/nav/a1
execute if score eta download.nav matches 3 run function amongus:tasks/download/nav/a2
execute if score eta download.nav matches 4 run function amongus:tasks/download/nav/a3
execute if score eta download.nav matches 5 run function amongus:tasks/download/nav/a4
execute if score eta download.nav matches 6 run function amongus:tasks/download/nav/a5
execute if score eta download.nav matches 8 run function amongus:tasks/download/nav/a6
execute if score eta download.nav matches 9..10 run function amongus:tasks/download/nav/a10
execute if score eta download.nav matches 10..13 run function amongus:tasks/download/nav/a11
execute if score eta download.nav matches 14..15 run function amongus:tasks/download/nav/a12
execute if score eta download.nav matches 16..19 run function amongus:tasks/download/nav/a13
execute if score eta download.nav matches 20..24 run function amongus:tasks/download/nav/a14
execute if score eta download.nav matches 25..29 run function amongus:tasks/download/nav/a15
execute if score eta download.nav matches 30..34 run function amongus:tasks/download/nav/a16
execute if score eta download.nav matches 35..39 run function amongus:tasks/download/nav/a17
execute if score eta download.nav matches 40..44 run function amongus:tasks/download/nav/a18
execute if score eta download.nav matches 45..49 run function amongus:tasks/download/nav/a19
execute if score eta download.nav matches 50..54 run function amongus:tasks/download/nav/a20
execute if score eta download.nav matches 55..59 run function amongus:tasks/download/nav/a21
execute if score eta download.nav matches 60..64 run function amongus:tasks/download/nav/a22
execute if score eta download.nav matches 65..69 run function amongus:tasks/download/nav/a23
execute if score eta download.nav matches 70..74 run function amongus:tasks/download/nav/a24
execute if score eta download.nav matches 75..79 run function amongus:tasks/download/nav/a25
execute if score eta download.nav matches 80..84 run function amongus:tasks/download/nav/a26
execute if score eta download.nav matches 85..89 run function amongus:tasks/download/nav/a27
execute if score eta download.nav matches 90..94 run function amongus:tasks/download/nav/a28
execute if score eta download.nav matches 95..99 run function amongus:tasks/download/nav/a29
execute if score eta download.nav matches 100.. run function amongus:tasks/download/nav/a30


#execute store result bossbar amongus:nav.download value run scoreboard players get @s download

execute if score @s download.nav matches 1000.. if score tick data matches 15 run function amongus:tasks/download/nav/end
