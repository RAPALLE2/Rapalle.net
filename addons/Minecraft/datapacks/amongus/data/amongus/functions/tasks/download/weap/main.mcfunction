
execute if score @s failed matches 1.. run function amongus:tasks/download/weap/end

#execute if score @s download matches 1 run bossbar set amongus:weap.download players @s

execute if score @s download.weap matches 1..800 run scoreboard players add @s download.weap 8
execute if score @s download.weap matches 801..1000 run scoreboard players add @s download.weap 3

scoreboard players operation eta download.weap = @s download.weap
scoreboard players operation eta download.weap /= ten download.weap

execute if score eta download.weap matches 1 run function amongus:tasks/download/weap/a1
execute if score eta download.weap matches 3 run function amongus:tasks/download/weap/a2
execute if score eta download.weap matches 4 run function amongus:tasks/download/weap/a3
execute if score eta download.weap matches 5 run function amongus:tasks/download/weap/a4
execute if score eta download.weap matches 6 run function amongus:tasks/download/weap/a5
execute if score eta download.weap matches 8 run function amongus:tasks/download/weap/a6
execute if score eta download.weap matches 9..10 run function amongus:tasks/download/weap/a10
execute if score eta download.weap matches 10..13 run function amongus:tasks/download/weap/a11
execute if score eta download.weap matches 14..15 run function amongus:tasks/download/weap/a12
execute if score eta download.weap matches 16..19 run function amongus:tasks/download/weap/a13
execute if score eta download.weap matches 20..24 run function amongus:tasks/download/weap/a14
execute if score eta download.weap matches 25..29 run function amongus:tasks/download/weap/a15
execute if score eta download.weap matches 30..34 run function amongus:tasks/download/weap/a16
execute if score eta download.weap matches 35..39 run function amongus:tasks/download/weap/a17
execute if score eta download.weap matches 40..44 run function amongus:tasks/download/weap/a18
execute if score eta download.weap matches 45..49 run function amongus:tasks/download/weap/a19
execute if score eta download.weap matches 50..54 run function amongus:tasks/download/weap/a20
execute if score eta download.weap matches 55..59 run function amongus:tasks/download/weap/a21
execute if score eta download.weap matches 60..64 run function amongus:tasks/download/weap/a22
execute if score eta download.weap matches 65..69 run function amongus:tasks/download/weap/a23
execute if score eta download.weap matches 70..74 run function amongus:tasks/download/weap/a24
execute if score eta download.weap matches 75..79 run function amongus:tasks/download/weap/a25
execute if score eta download.weap matches 80..84 run function amongus:tasks/download/weap/a26
execute if score eta download.weap matches 85..89 run function amongus:tasks/download/weap/a27
execute if score eta download.weap matches 90..94 run function amongus:tasks/download/weap/a28
execute if score eta download.weap matches 95..99 run function amongus:tasks/download/weap/a29
execute if score eta download.weap matches 100.. run function amongus:tasks/download/weap/a30


#execute store result bossbar amongus:weap.download value run scoreboard players get @s download

execute if score @s download.weap matches 1000.. if score tick data matches 15 run function amongus:tasks/download/weap/end
