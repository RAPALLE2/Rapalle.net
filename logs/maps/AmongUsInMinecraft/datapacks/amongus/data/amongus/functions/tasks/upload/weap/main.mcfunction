
execute if score @s failed matches 1.. run function amongus:tasks/upload/weap/end

execute if score @s upload.weap matches 1..800 run scoreboard players add @s upload.weap 8
execute if score @s upload.weap matches 801..1000 run scoreboard players add @s upload.weap 3

scoreboard players operation eta upload.weap = @s upload.weap
scoreboard players operation eta upload.weap /= ten upload.weap

execute if score eta upload.weap matches 1 run function amongus:tasks/upload/weap/a1
execute if score eta upload.weap matches 3 run function amongus:tasks/upload/weap/a2
execute if score eta upload.weap matches 4 run function amongus:tasks/upload/weap/a3
execute if score eta upload.weap matches 5 run function amongus:tasks/upload/weap/a4
execute if score eta upload.weap matches 6 run function amongus:tasks/upload/weap/a5
execute if score eta upload.weap matches 8 run function amongus:tasks/upload/weap/a6
execute if score eta upload.weap matches 9..10 run function amongus:tasks/upload/weap/a10
execute if score eta upload.weap matches 10..13 run function amongus:tasks/upload/weap/a11
execute if score eta upload.weap matches 14..15 run function amongus:tasks/upload/weap/a12
execute if score eta upload.weap matches 16..19 run function amongus:tasks/upload/weap/a13
execute if score eta upload.weap matches 20..24 run function amongus:tasks/upload/weap/a14
execute if score eta upload.weap matches 25..29 run function amongus:tasks/upload/weap/a15
execute if score eta upload.weap matches 30..34 run function amongus:tasks/upload/weap/a16
execute if score eta upload.weap matches 35..39 run function amongus:tasks/upload/weap/a17
execute if score eta upload.weap matches 40..44 run function amongus:tasks/upload/weap/a18
execute if score eta upload.weap matches 45..49 run function amongus:tasks/upload/weap/a19
execute if score eta upload.weap matches 50..54 run function amongus:tasks/upload/weap/a20
execute if score eta upload.weap matches 55..59 run function amongus:tasks/upload/weap/a21
execute if score eta upload.weap matches 60..64 run function amongus:tasks/upload/weap/a22
execute if score eta upload.weap matches 65..69 run function amongus:tasks/upload/weap/a23
execute if score eta upload.weap matches 70..74 run function amongus:tasks/upload/weap/a24
execute if score eta upload.weap matches 75..79 run function amongus:tasks/upload/weap/a25
execute if score eta upload.weap matches 80..84 run function amongus:tasks/upload/weap/a26
execute if score eta upload.weap matches 85..89 run function amongus:tasks/upload/weap/a27
execute if score eta upload.weap matches 90..94 run function amongus:tasks/upload/weap/a28
execute if score eta upload.weap matches 95..99 run function amongus:tasks/upload/weap/a29
execute if score eta upload.weap matches 100.. run function amongus:tasks/upload/weap/a30


#execute store result bossbar amongus:weap.upload value run scoreboard players get @s upload

execute if score @s upload.weap matches 1000.. if score tick data matches 15 run function amongus:tasks/upload/weap/end
