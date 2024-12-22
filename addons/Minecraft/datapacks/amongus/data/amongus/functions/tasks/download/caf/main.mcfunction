
execute if score @s failed matches 1.. run function amongus:tasks/download/caf/end

#execute if score @s download matches 1 run bossbar set amongus:caf.download players @s

execute if score @s download.caf matches 1..800 run scoreboard players add @s download.caf 8
execute if score @s download.caf matches 801..1000 run scoreboard players add @s download.caf 3

scoreboard players operation eta download.caf = @s download.caf
scoreboard players operation eta download.caf /= ten download.caf

execute if score eta download.caf matches 1 run function amongus:tasks/download/caf/a1
execute if score eta download.caf matches 3 run function amongus:tasks/download/caf/a2
execute if score eta download.caf matches 4 run function amongus:tasks/download/caf/a3
execute if score eta download.caf matches 5 run function amongus:tasks/download/caf/a4
execute if score eta download.caf matches 6 run function amongus:tasks/download/caf/a5
execute if score eta download.caf matches 8 run function amongus:tasks/download/caf/a6
execute if score eta download.caf matches 9..10 run function amongus:tasks/download/caf/a10
execute if score eta download.caf matches 10..13 run function amongus:tasks/download/caf/a11
execute if score eta download.caf matches 14..15 run function amongus:tasks/download/caf/a12
execute if score eta download.caf matches 16..19 run function amongus:tasks/download/caf/a13
execute if score eta download.caf matches 20..24 run function amongus:tasks/download/caf/a14
execute if score eta download.caf matches 25..29 run function amongus:tasks/download/caf/a15
execute if score eta download.caf matches 30..34 run function amongus:tasks/download/caf/a16
execute if score eta download.caf matches 35..39 run function amongus:tasks/download/caf/a17
execute if score eta download.caf matches 40..44 run function amongus:tasks/download/caf/a18
execute if score eta download.caf matches 45..49 run function amongus:tasks/download/caf/a19
execute if score eta download.caf matches 50..54 run function amongus:tasks/download/caf/a20
execute if score eta download.caf matches 55..59 run function amongus:tasks/download/caf/a21
execute if score eta download.caf matches 60..64 run function amongus:tasks/download/caf/a22
execute if score eta download.caf matches 65..69 run function amongus:tasks/download/caf/a23
execute if score eta download.caf matches 70..74 run function amongus:tasks/download/caf/a24
execute if score eta download.caf matches 75..79 run function amongus:tasks/download/caf/a25
execute if score eta download.caf matches 80..84 run function amongus:tasks/download/caf/a26
execute if score eta download.caf matches 85..89 run function amongus:tasks/download/caf/a27
execute if score eta download.caf matches 90..94 run function amongus:tasks/download/caf/a28
execute if score eta download.caf matches 95..99 run function amongus:tasks/download/caf/a29
execute if score eta download.caf matches 100.. run function amongus:tasks/download/caf/a30


#execute store result bossbar amongus:caf.download value run scoreboard players get @s download

execute if score @s download.caf matches 1000.. if score tick data matches 15 run function amongus:tasks/download/caf/end
