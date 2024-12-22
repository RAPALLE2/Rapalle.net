
execute if score @s failed matches 1.. run function amongus:tasks/upload/nav/end

execute if score @s upload.nav matches 1..800 run scoreboard players add @s upload.nav 8
execute if score @s upload.nav matches 801..1000 run scoreboard players add @s upload.nav 3

scoreboard players operation eta upload.nav = @s upload.nav
scoreboard players operation eta upload.nav /= ten upload.nav

execute if score eta upload.nav matches 1 run function amongus:tasks/upload/nav/a1
execute if score eta upload.nav matches 3 run function amongus:tasks/upload/nav/a2
execute if score eta upload.nav matches 4 run function amongus:tasks/upload/nav/a3
execute if score eta upload.nav matches 5 run function amongus:tasks/upload/nav/a4
execute if score eta upload.nav matches 6 run function amongus:tasks/upload/nav/a5
execute if score eta upload.nav matches 8 run function amongus:tasks/upload/nav/a6
execute if score eta upload.nav matches 9..10 run function amongus:tasks/upload/nav/a10
execute if score eta upload.nav matches 10..13 run function amongus:tasks/upload/nav/a11
execute if score eta upload.nav matches 14..15 run function amongus:tasks/upload/nav/a12
execute if score eta upload.nav matches 16..19 run function amongus:tasks/upload/nav/a13
execute if score eta upload.nav matches 20..24 run function amongus:tasks/upload/nav/a14
execute if score eta upload.nav matches 25..29 run function amongus:tasks/upload/nav/a15
execute if score eta upload.nav matches 30..34 run function amongus:tasks/upload/nav/a16
execute if score eta upload.nav matches 35..39 run function amongus:tasks/upload/nav/a17
execute if score eta upload.nav matches 40..44 run function amongus:tasks/upload/nav/a18
execute if score eta upload.nav matches 45..49 run function amongus:tasks/upload/nav/a19
execute if score eta upload.nav matches 50..54 run function amongus:tasks/upload/nav/a20
execute if score eta upload.nav matches 55..59 run function amongus:tasks/upload/nav/a21
execute if score eta upload.nav matches 60..64 run function amongus:tasks/upload/nav/a22
execute if score eta upload.nav matches 65..69 run function amongus:tasks/upload/nav/a23
execute if score eta upload.nav matches 70..74 run function amongus:tasks/upload/nav/a24
execute if score eta upload.nav matches 75..79 run function amongus:tasks/upload/nav/a25
execute if score eta upload.nav matches 80..84 run function amongus:tasks/upload/nav/a26
execute if score eta upload.nav matches 85..89 run function amongus:tasks/upload/nav/a27
execute if score eta upload.nav matches 90..94 run function amongus:tasks/upload/nav/a28
execute if score eta upload.nav matches 95..99 run function amongus:tasks/upload/nav/a29
execute if score eta upload.nav matches 100.. run function amongus:tasks/upload/nav/a30


#execute store result bossbar amongus:nav.upload value run scoreboard players get @s upload

execute if score @s upload.nav matches 1000.. if score tick data matches 15 run function amongus:tasks/upload/nav/end
