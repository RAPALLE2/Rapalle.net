
execute if score @s destroy.rock = @s rock.pos run scoreboard players add @s weap.clear.count 1
execute if score @s destroy.rock = @s rock.pos run scoreboard players set @s ani.timer 4

execute if score @s weap.clear.count matches 12.. run scoreboard players set @s ani.timer 34

scoreboard players reset @s destroy.rock
execute unless score @s ani.timer matches 4.. run scoreboard players enable @s destroy.rock
