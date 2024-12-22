
scoreboard players set color1 vote_result 0
scoreboard players set color2 vote_result 0
scoreboard players set color3 vote_result 0
scoreboard players set color4 vote_result 0
scoreboard players set color5 vote_result 0
scoreboard players set color6 vote_result 0
scoreboard players set color7 vote_result 0
scoreboard players set color8 vote_result 0
scoreboard players set color9 vote_result 0
scoreboard players set color10 vote_result 0
scoreboard players set color11 vote_result 0

execute as @a[scores={vote=1}] run scoreboard players add color1 vote_result 1
execute as @a[scores={vote=2}] run scoreboard players add color2 vote_result 1
execute as @a[scores={vote=3}] run scoreboard players add color3 vote_result 1
execute as @a[scores={vote=4}] run scoreboard players add color4 vote_result 1
execute as @a[scores={vote=5}] run scoreboard players add color5 vote_result 1
execute as @a[scores={vote=6}] run scoreboard players add color6 vote_result 1
execute as @a[scores={vote=7}] run scoreboard players add color7 vote_result 1
execute as @a[scores={vote=8}] run scoreboard players add color8 vote_result 1
execute as @a[scores={vote=9}] run scoreboard players add color9 vote_result 1
execute as @a[scores={vote=10}] run scoreboard players add color10 vote_result 1
execute as @a[scores={vote=11}] run scoreboard players add color11 vote_result 1


scoreboard players operation temp vote_result = color1 vote_result

execute if score color2 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color2 vote_result
execute if score color3 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color3 vote_result
execute if score color4 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color4 vote_result
execute if score color5 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color5 vote_result
execute if score color6 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color6 vote_result
execute if score color7 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color7 vote_result
execute if score color8 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color8 vote_result
execute if score color9 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color9 vote_result
execute if score color10 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color10 vote_result
execute if score color11 vote_result >= temp vote_result run scoreboard players operation temp vote_result = color11 vote_result

scoreboard players set count vote_result 0

execute if score color1 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color2 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color3 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color4 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color5 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color6 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color7 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color8 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color9 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color10 vote_result = temp vote_result run scoreboard players add count vote_result 1
execute if score color11 vote_result = temp vote_result run scoreboard players add count vote_result 1

#scoreboard players operation max vote_result = temp vote_result

scoreboard players set result vote 0

execute if score count vote_result matches 1 if score color1 vote_result = temp vote_result run scoreboard players set result vote 1
execute if score count vote_result matches 1 if score color2 vote_result = temp vote_result run scoreboard players set result vote 2
execute if score count vote_result matches 1 if score color3 vote_result = temp vote_result run scoreboard players set result vote 3
execute if score count vote_result matches 1 if score color4 vote_result = temp vote_result run scoreboard players set result vote 4
execute if score count vote_result matches 1 if score color5 vote_result = temp vote_result run scoreboard players set result vote 5
execute if score count vote_result matches 1 if score color6 vote_result = temp vote_result run scoreboard players set result vote 6
execute if score count vote_result matches 1 if score color7 vote_result = temp vote_result run scoreboard players set result vote 7
execute if score count vote_result matches 1 if score color8 vote_result = temp vote_result run scoreboard players set result vote 8
execute if score count vote_result matches 1 if score color9 vote_result = temp vote_result run scoreboard players set result vote 9
execute if score count vote_result matches 1 if score color10 vote_result = temp vote_result run scoreboard players set result vote 10
execute if score count vote_result matches 1 if score color11 vote_result = temp vote_result run scoreboard players set result vote 11

execute as @e[tag=ingame,scores={color=1}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=2}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=3}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=4}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=5}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=6}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=7}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=8}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=9}] if score @s color = result vote run tag @s add ejected
execute as @e[tag=ingame,scores={color=10}] if score @s color = result vote run tag @s add ejected

tellraw @a[tag=ingame] ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"Results:","color":"white"},{"text":"\n"}]

execute as @e[tag=ingame,scores={color=1}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=1}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color1","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=1}] unless entity @s[tag=ghost] if entity @e[scores={vote=1}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=1}]"}]
execute as @e[tag=ingame,scores={color=2}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=2}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color2","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=2}] unless entity @s[tag=ghost] if entity @e[scores={vote=2}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=2}]"}]
execute as @e[tag=ingame,scores={color=3}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=3}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color3","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=3}] unless entity @s[tag=ghost] if entity @e[scores={vote=3}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=3}]"}]
execute as @e[tag=ingame,scores={color=4}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=4}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color4","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=4}] unless entity @s[tag=ghost] if entity @e[scores={vote=4}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=4}]"}]
execute as @e[tag=ingame,scores={color=5}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=5}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color5","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=5}] unless entity @s[tag=ghost] if entity @e[scores={vote=5}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=5}]"}]
execute as @e[tag=ingame,scores={color=6}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=6}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color6","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=6}] unless entity @s[tag=ghost] if entity @e[scores={vote=6}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=6}]"}]
execute as @e[tag=ingame,scores={color=7}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=7}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color7","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=7}] unless entity @s[tag=ghost] if entity @e[scores={vote=7}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=7}]"}]
execute as @e[tag=ingame,scores={color=8}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=8}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color8","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=8}] unless entity @s[tag=ghost] if entity @e[scores={vote=8}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=8}]"}]
execute as @e[tag=ingame,scores={color=9}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=9}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color9","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=9}] unless entity @s[tag=ghost] if entity @e[scores={vote=9}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=9}]"}]
execute as @e[tag=ingame,scores={color=10}] unless entity @s[tag=ghost] as @e[tag=ingame] run tellraw @s ["",{"text":"→ ","color":"white"},{"selector":"@e[scores={color=10}]","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"text":", ","color":"white"},{"score":{"name":"color10","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=10}] unless entity @s[tag=ghost] if entity @e[scores={vote=10}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=10}]"}]
execute as @e[tag=ingame] run tellraw @s ["",{"text":"→ SKIP, ","color":"white","hoverEvent":{"action":"show_text","contents":{"text":"Wise decision?","color":"green"}}},{"score":{"name":"color11","objective":"vote_result"},"color":"green"}]
execute if score anonymous_votes settings matches 0 as @e[tag=ingame,scores={color=11}] unless entity @s[tag=ghost] if entity @e[scores={vote=11}] as @e[tag=ingame] run tellraw @s ["",{"text":"   → "},{"selector":"@e[scores={vote=11}]"}]

execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=1}] unless entity @s[tag=ghost] if entity @e[scores={vote=1}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=1}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=2}] unless entity @s[tag=ghost] if entity @e[scores={vote=2}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=2}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=3}] unless entity @s[tag=ghost] if entity @e[scores={vote=3}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=3}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=4}] unless entity @s[tag=ghost] if entity @e[scores={vote=4}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=4}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=5}] unless entity @s[tag=ghost] if entity @e[scores={vote=5}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=5}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=6}] unless entity @s[tag=ghost] if entity @e[scores={vote=6}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=6}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=7}] unless entity @s[tag=ghost] if entity @e[scores={vote=7}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=7}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=8}] unless entity @s[tag=ghost] if entity @e[scores={vote=8}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=8}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=9}] unless entity @s[tag=ghost] if entity @e[scores={vote=9}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=9}]"},{"text":" voted for you!"}]
execute if score anonymous_votes settings matches 2 as @e[tag=ingame,scores={color=10}] unless entity @s[tag=ghost] if entity @e[scores={vote=10}] run tellraw @s ["",{"text":"\n"},{"selector":"@e[scores={vote=10}]"},{"text":" voted for you!"}]

title @a[tag=ingame] actionbar {"text":""}

execute as @e[tag=ingame] run clear @s

scoreboard players set print_vote data 0
scoreboard players set results_timer data 17

scoreboard players set show_results data 0

tag @a[tag=ingame] remove print
tag @a[tag=ingame] remove temp_print

scoreboard players set @a[tag=impostor] kill 0
scoreboard players operation @a[tag=impostor] kill -= kill_cd settings

tag @e[tag=initiator] remove initiator
