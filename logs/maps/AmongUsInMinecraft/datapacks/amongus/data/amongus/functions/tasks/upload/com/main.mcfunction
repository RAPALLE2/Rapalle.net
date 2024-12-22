
execute if score @s failed matches 1.. run function amongus:tasks/upload/com/end

execute if score @s upload.com matches 1..800 run scoreboard players add @s upload.com 8
execute if score @s upload.com matches 801..1000 run scoreboard players add @s upload.com 3

scoreboard players operation eta upload.com = @s upload.com
scoreboard players operation eta upload.com /= ten upload.com

execute if score eta upload.com matches 1 run function amongus:tasks/upload/com/a1
execute if score eta upload.com matches 3 run function amongus:tasks/upload/com/a2
execute if score eta upload.com matches 4 run function amongus:tasks/upload/com/a3
execute if score eta upload.com matches 5 run function amongus:tasks/upload/com/a4
execute if score eta upload.com matches 6 run function amongus:tasks/upload/com/a5
execute if score eta upload.com matches 8 run function amongus:tasks/upload/com/a6
execute if score eta upload.com matches 9..10 run function amongus:tasks/upload/com/a10
execute if score eta upload.com matches 10..13 run function amongus:tasks/upload/com/a11
execute if score eta upload.com matches 14..15 run function amongus:tasks/upload/com/a12
execute if score eta upload.com matches 16..19 run function amongus:tasks/upload/com/a13
execute if score eta upload.com matches 20..24 run function amongus:tasks/upload/com/a14
execute if score eta upload.com matches 25..29 run function amongus:tasks/upload/com/a15
execute if score eta upload.com matches 30..34 run function amongus:tasks/upload/com/a16
execute if score eta upload.com matches 35..39 run function amongus:tasks/upload/com/a17
execute if score eta upload.com matches 40..44 run function amongus:tasks/upload/com/a18
execute if score eta upload.com matches 45..49 run function amongus:tasks/upload/com/a19
execute if score eta upload.com matches 50..54 run function amongus:tasks/upload/com/a20
execute if score eta upload.com matches 55..59 run function amongus:tasks/upload/com/a21
execute if score eta upload.com matches 60..64 run function amongus:tasks/upload/com/a22
execute if score eta upload.com matches 65..69 run function amongus:tasks/upload/com/a23
execute if score eta upload.com matches 70..74 run function amongus:tasks/upload/com/a24
execute if score eta upload.com matches 75..79 run function amongus:tasks/upload/com/a25
execute if score eta upload.com matches 80..84 run function amongus:tasks/upload/com/a26
execute if score eta upload.com matches 85..89 run function amongus:tasks/upload/com/a27
execute if score eta upload.com matches 90..94 run function amongus:tasks/upload/com/a28
execute if score eta upload.com matches 95..99 run function amongus:tasks/upload/com/a29
execute if score eta upload.com matches 100.. run function amongus:tasks/upload/com/a30


#execute store result bossbar amongus:com.upload value run scoreboard players get @s upload

execute if score @s upload.com matches 1000.. if score tick data matches 15 run function amongus:tasks/upload/com/end
