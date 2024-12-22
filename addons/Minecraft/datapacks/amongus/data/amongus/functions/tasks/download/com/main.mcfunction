
execute if score @s failed matches 1.. run function amongus:tasks/download/com/end

#execute if score @s download matches 1 run bossbar set amongus:com.download players @s

execute if score @s download.com matches 1..800 run scoreboard players add @s download.com 8
execute if score @s download.com matches 801..1000 run scoreboard players add @s download.com 3

scoreboard players operation eta download.com = @s download.com
scoreboard players operation eta download.com /= ten download.com

execute if score eta download.com matches 1 run function amongus:tasks/download/com/a1
execute if score eta download.com matches 3 run function amongus:tasks/download/com/a2
execute if score eta download.com matches 4 run function amongus:tasks/download/com/a3
execute if score eta download.com matches 5 run function amongus:tasks/download/com/a4
execute if score eta download.com matches 6 run function amongus:tasks/download/com/a5
execute if score eta download.com matches 8 run function amongus:tasks/download/com/a6
execute if score eta download.com matches 9..10 run function amongus:tasks/download/com/a10
execute if score eta download.com matches 10..13 run function amongus:tasks/download/com/a11
execute if score eta download.com matches 14..15 run function amongus:tasks/download/com/a12
execute if score eta download.com matches 16..19 run function amongus:tasks/download/com/a13
execute if score eta download.com matches 20..24 run function amongus:tasks/download/com/a14
execute if score eta download.com matches 25..29 run function amongus:tasks/download/com/a15
execute if score eta download.com matches 30..34 run function amongus:tasks/download/com/a16
execute if score eta download.com matches 35..39 run function amongus:tasks/download/com/a17
execute if score eta download.com matches 40..44 run function amongus:tasks/download/com/a18
execute if score eta download.com matches 45..49 run function amongus:tasks/download/com/a19
execute if score eta download.com matches 50..54 run function amongus:tasks/download/com/a20
execute if score eta download.com matches 55..59 run function amongus:tasks/download/com/a21
execute if score eta download.com matches 60..64 run function amongus:tasks/download/com/a22
execute if score eta download.com matches 65..69 run function amongus:tasks/download/com/a23
execute if score eta download.com matches 70..74 run function amongus:tasks/download/com/a24
execute if score eta download.com matches 75..79 run function amongus:tasks/download/com/a25
execute if score eta download.com matches 80..84 run function amongus:tasks/download/com/a26
execute if score eta download.com matches 85..89 run function amongus:tasks/download/com/a27
execute if score eta download.com matches 90..94 run function amongus:tasks/download/com/a28
execute if score eta download.com matches 95..99 run function amongus:tasks/download/com/a29
execute if score eta download.com matches 100.. run function amongus:tasks/download/com/a30


#execute store result bossbar amongus:com.download value run scoreboard players get @s download

execute if score @s download.com matches 1000.. if score tick data matches 15 run function amongus:tasks/download/com/end
