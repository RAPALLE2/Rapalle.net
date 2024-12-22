
execute if score @s failed matches 1.. run function amongus:tasks/download/elec/end

#execute if score @s download matches 1 run bossbar set amongus:elec.download players @s

execute if score @s download.elec matches 1..800 run scoreboard players add @s download.elec 8
execute if score @s download.elec matches 801..1000 run scoreboard players add @s download.elec 3

scoreboard players operation eta download.elec = @s download.elec
scoreboard players operation eta download.elec /= ten download.elec

execute if score eta download.elec matches 1 run function amongus:tasks/download/elec/a1
execute if score eta download.elec matches 3 run function amongus:tasks/download/elec/a2
execute if score eta download.elec matches 4 run function amongus:tasks/download/elec/a3
execute if score eta download.elec matches 5 run function amongus:tasks/download/elec/a4
execute if score eta download.elec matches 6 run function amongus:tasks/download/elec/a5
execute if score eta download.elec matches 8 run function amongus:tasks/download/elec/a6
execute if score eta download.elec matches 9..10 run function amongus:tasks/download/elec/a10
execute if score eta download.elec matches 10..13 run function amongus:tasks/download/elec/a11
execute if score eta download.elec matches 14..15 run function amongus:tasks/download/elec/a12
execute if score eta download.elec matches 16..19 run function amongus:tasks/download/elec/a13
execute if score eta download.elec matches 20..24 run function amongus:tasks/download/elec/a14
execute if score eta download.elec matches 25..29 run function amongus:tasks/download/elec/a15
execute if score eta download.elec matches 30..34 run function amongus:tasks/download/elec/a16
execute if score eta download.elec matches 35..39 run function amongus:tasks/download/elec/a17
execute if score eta download.elec matches 40..44 run function amongus:tasks/download/elec/a18
execute if score eta download.elec matches 45..49 run function amongus:tasks/download/elec/a19
execute if score eta download.elec matches 50..54 run function amongus:tasks/download/elec/a20
execute if score eta download.elec matches 55..59 run function amongus:tasks/download/elec/a21
execute if score eta download.elec matches 60..64 run function amongus:tasks/download/elec/a22
execute if score eta download.elec matches 65..69 run function amongus:tasks/download/elec/a23
execute if score eta download.elec matches 70..74 run function amongus:tasks/download/elec/a24
execute if score eta download.elec matches 75..79 run function amongus:tasks/download/elec/a25
execute if score eta download.elec matches 80..84 run function amongus:tasks/download/elec/a26
execute if score eta download.elec matches 85..89 run function amongus:tasks/download/elec/a27
execute if score eta download.elec matches 90..94 run function amongus:tasks/download/elec/a28
execute if score eta download.elec matches 95..99 run function amongus:tasks/download/elec/a29
execute if score eta download.elec matches 100.. run function amongus:tasks/download/elec/a30


#execute store result bossbar amongus:elec.download value run scoreboard players get @s download

execute if score @s download.elec matches 1000.. if score tick data matches 15 run function amongus:tasks/download/elec/end
