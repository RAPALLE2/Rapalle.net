
execute if score @s failed matches 1.. run function amongus:tasks/manifolds/end

execute if score @s reac.btn.num matches 1..10 run function amongus:tasks/manifolds/check

execute if score @s manifolds.prog matches 10 if score tick data matches 10 run function amongus:tasks/manifolds/end
