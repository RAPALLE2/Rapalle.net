
execute if score tick data matches 20 if score start_cd data matches 0.. run scoreboard players remove start_cd data 1

title @a[tag=joined] actionbar ["",{"text":"Starting in ","color":"gold"},{"score":{"name":"start_cd","objective":"data"},"color":"gold"}]



execute if score start_cd data matches 0 run scoreboard players set game_start data 1
