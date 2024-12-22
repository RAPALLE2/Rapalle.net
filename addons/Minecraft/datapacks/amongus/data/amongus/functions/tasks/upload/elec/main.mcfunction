
execute if score @s failed matches 1.. run function amongus:tasks/upload/elec/end

execute if score @s upload.elec matches 1..800 run scoreboard players add @s upload.elec 8
execute if score @s upload.elec matches 801..1000 run scoreboard players add @s upload.elec 3

scoreboard players operation eta upload.elec = @s upload.elec
scoreboard players operation eta upload.elec /= ten upload.elec

execute if score eta upload.elec matches 1 run function amongus:tasks/upload/elec/a1
execute if score eta upload.elec matches 3 run function amongus:tasks/upload/elec/a2
execute if score eta upload.elec matches 4 run function amongus:tasks/upload/elec/a3
execute if score eta upload.elec matches 5 run function amongus:tasks/upload/elec/a4
execute if score eta upload.elec matches 6 run function amongus:tasks/upload/elec/a5
execute if score eta upload.elec matches 8 run function amongus:tasks/upload/elec/a6
execute if score eta upload.elec matches 9..10 run function amongus:tasks/upload/elec/a10
execute if score eta upload.elec matches 10..13 run function amongus:tasks/upload/elec/a11
execute if score eta upload.elec matches 14..15 run function amongus:tasks/upload/elec/a12
execute if score eta upload.elec matches 16..19 run function amongus:tasks/upload/elec/a13
execute if score eta upload.elec matches 20..24 run function amongus:tasks/upload/elec/a14
execute if score eta upload.elec matches 25..29 run function amongus:tasks/upload/elec/a15
execute if score eta upload.elec matches 30..34 run function amongus:tasks/upload/elec/a16
execute if score eta upload.elec matches 35..39 run function amongus:tasks/upload/elec/a17
execute if score eta upload.elec matches 40..44 run function amongus:tasks/upload/elec/a18
execute if score eta upload.elec matches 45..49 run function amongus:tasks/upload/elec/a19
execute if score eta upload.elec matches 50..54 run function amongus:tasks/upload/elec/a20
execute if score eta upload.elec matches 55..59 run function amongus:tasks/upload/elec/a21
execute if score eta upload.elec matches 60..64 run function amongus:tasks/upload/elec/a22
execute if score eta upload.elec matches 65..69 run function amongus:tasks/upload/elec/a23
execute if score eta upload.elec matches 70..74 run function amongus:tasks/upload/elec/a24
execute if score eta upload.elec matches 75..79 run function amongus:tasks/upload/elec/a25
execute if score eta upload.elec matches 80..84 run function amongus:tasks/upload/elec/a26
execute if score eta upload.elec matches 85..89 run function amongus:tasks/upload/elec/a27
execute if score eta upload.elec matches 90..94 run function amongus:tasks/upload/elec/a28
execute if score eta upload.elec matches 95..99 run function amongus:tasks/upload/elec/a29
execute if score eta upload.elec matches 100.. run function amongus:tasks/upload/elec/a30


#execute store result bossbar amongus:elec.upload value run scoreboard players get @s upload

execute if score @s upload.elec matches 1000.. if score tick data matches 15 run function amongus:tasks/upload/elec/end
