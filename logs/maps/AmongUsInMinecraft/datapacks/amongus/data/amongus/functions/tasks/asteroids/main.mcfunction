
scoreboard players add @s rock.tick 1
execute if score @s rock.tick matches 13.. run scoreboard players set @s rock.tick 0

execute if score @s failed matches 1.. run function amongus:tasks/asteroids/end

execute if score @s rock.tick matches 1 unless score @s ani.timer matches 1.. run function amongus:tasks/asteroids/move

execute if score @s destroy.rock matches 1.. run function amongus:tasks/asteroids/check
execute if score @s ani.timer matches 1.. run function amongus:tasks/asteroids/success
