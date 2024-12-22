
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

execute if score @s rock.row matches 1 run function amongus:tasks/asteroids/row/1
execute if score @s rock.row matches 2 run function amongus:tasks/asteroids/row/2
execute if score @s rock.row matches 3 run function amongus:tasks/asteroids/row/3
execute if score @s rock.row matches 4 run function amongus:tasks/asteroids/row/4
execute if score @s rock.row matches 5 run function amongus:tasks/asteroids/row/5
execute if score @s rock.row matches 6 run function amongus:tasks/asteroids/row/6
execute if score @s rock.row matches 7 run function amongus:tasks/asteroids/row/7
execute if score @s rock.row matches 8 run function amongus:tasks/asteroids/row/8
execute if score @s rock.row matches 9 run function amongus:tasks/asteroids/row/9
execute if score @s rock.row matches 10 run function amongus:tasks/asteroids/row/10
execute if score @s rock.row matches 11 run function amongus:tasks/asteroids/row/11
execute if score @s rock.row matches 12 run function amongus:tasks/asteroids/row/12
execute if score @s rock.row matches 13 run function amongus:tasks/asteroids/row/13
execute if score @s rock.row matches 14 run function amongus:tasks/asteroids/row/14
execute if score @s rock.row matches 15 run function amongus:tasks/asteroids/row/15
execute if score @s rock.row matches 16 run function amongus:tasks/asteroids/row/16

scoreboard players add @s rock.row 1
execute if score @s rock.row matches 17.. run scoreboard players set @s rock.row 1
