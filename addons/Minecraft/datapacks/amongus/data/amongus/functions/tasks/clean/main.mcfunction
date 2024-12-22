
execute if score @s failed matches 1.. run function amongus:tasks/clean/end

execute if score @s leafA matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafA matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafA matches 2 run scoreboard players add @s leafA 1
execute if score @s leafB matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafB matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafB matches 2 run scoreboard players add @s leafB 1
execute if score @s leafC matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafC matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafC matches 2 run scoreboard players add @s leafC 1
execute if score @s leafD matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafD matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafD matches 2 run scoreboard players add @s leafD 1
execute if score @s leafE matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafE matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafE matches 2 run scoreboard players add @s leafE 1
execute if score @s leafF matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafF matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafF matches 2 run scoreboard players add @s leafF 1
execute if score @s leafG matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafG matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafG matches 2 run scoreboard players add @s leafG 1
execute if score @s leafH matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafH matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafH matches 2 run scoreboard players add @s leafH 1
execute if score @s leafI matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafI matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafI matches 2 run scoreboard players add @s leafI 1
execute if score @s leafJ matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafJ matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafJ matches 2 run scoreboard players add @s leafJ 1
execute if score @s leafK matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafK matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafK matches 2 run scoreboard players add @s leafK 1
execute if score @s leafL matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafL matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafL matches 2 run scoreboard players add @s leafL 1
execute if score @s leafM matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafM matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafM matches 2 run scoreboard players add @s leafM 1
execute if score @s leafN matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafN matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafN matches 2 run scoreboard players add @s leafN 1
execute if score @s leafO matches 2 run scoreboard players add @s leafs.cleaned 1
execute if score @s leafO matches 2 if score @s leafs.cleaned matches ..9 run function amongus:tasks/clean/new
execute if score @s leafO matches 2 run scoreboard players add @s leafO 1

execute if score @s leafs.cleaned matches 10 run function amongus:tasks/clean/o0
execute if score @s leafs.cleaned matches 10 run scoreboard players set @s leafs.cleaned 11 
execute if score @s leafs.cleaned matches 11 if score tick data matches 10 run function amongus:tasks/clean/end
