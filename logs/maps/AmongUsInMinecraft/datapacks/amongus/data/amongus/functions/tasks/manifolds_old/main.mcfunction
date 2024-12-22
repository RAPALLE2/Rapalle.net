
execute if score @s failed matches 1.. run function amongus:tasks/manifolds/end

execute if score @s manifoldsA matches 1 run scoreboard players set @s manifoldsB 0
execute if score @s manifoldsA matches 1 run scoreboard players enable @s manifoldsB
execute if score @s manifoldsA matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsA matches 1 run scoreboard players set @s manifoldsA 2

execute if score @s manifoldsB matches 1 run scoreboard players set @s manifoldsC 0
execute if score @s manifoldsB matches 1 run scoreboard players enable @s manifoldsC
execute if score @s manifoldsB matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsB matches 1 run scoreboard players set @s manifoldsB 2

execute if score @s manifoldsC matches 1 run scoreboard players set @s manifoldsD 0
execute if score @s manifoldsC matches 1 run scoreboard players enable @s manifoldsD
execute if score @s manifoldsC matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsC matches 1 run scoreboard players set @s manifoldsC 2

execute if score @s manifoldsD matches 1 run scoreboard players set @s manifoldsE 0
execute if score @s manifoldsD matches 1 run scoreboard players enable @s manifoldsE
execute if score @s manifoldsD matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsD matches 1 run scoreboard players set @s manifoldsD 2

execute if score @s manifoldsE matches 1 run scoreboard players set @s manifoldsF 0
execute if score @s manifoldsE matches 1 run scoreboard players enable @s manifoldsF
execute if score @s manifoldsE matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsE matches 1 run scoreboard players set @s manifoldsE 2

execute if score @s manifoldsF matches 1 run scoreboard players set @s manifoldsG 0
execute if score @s manifoldsF matches 1 run scoreboard players enable @s manifoldsG
execute if score @s manifoldsF matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsF matches 1 run scoreboard players set @s manifoldsF 2

execute if score @s manifoldsG matches 1 run scoreboard players set @s manifoldsH 0
execute if score @s manifoldsG matches 1 run scoreboard players enable @s manifoldsH
execute if score @s manifoldsG matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsG matches 1 run scoreboard players set @s manifoldsG 2

execute if score @s manifoldsH matches 1 run scoreboard players set @s manifoldsI 0
execute if score @s manifoldsH matches 1 run scoreboard players enable @s manifoldsI
execute if score @s manifoldsH matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsH matches 1 run scoreboard players set @s manifoldsH 2

execute if score @s manifoldsI matches 1 run scoreboard players set @s manifoldsJ 0
execute if score @s manifoldsI matches 1 run scoreboard players enable @s manifoldsJ
execute if score @s manifoldsI matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsI matches 1 run scoreboard players set @s manifoldsI 2

execute if score @s manifoldsJ matches 1 run function amongus:tasks/manifolds/canvas
execute if score @s manifoldsJ matches 1 run scoreboard players set @s manifoldsJ 2

execute if score @s failed.manifolds matches 1.. run function amongus:tasks/manifolds/init

execute if score @s manifoldsJ matches 2 if score tick data matches 10 run function amongus:tasks/manifolds/end
