
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.dark_blue
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.light_purple
scoreboard objectives setdisplay sidebar.team.dark_gray
scoreboard objectives setdisplay sidebar.team.dark_green

scoreboard players set countdown sabotage 30
scoreboard players set comms sabotage 0

execute unless score vote_enable data matches 1 run scoreboard players set showDisplay data 1

scoreboard players set ongoing sabotage 0

schedule clear amongus:sabotage/comms/setblock
schedule clear amongus:sabotage/comms/setair
