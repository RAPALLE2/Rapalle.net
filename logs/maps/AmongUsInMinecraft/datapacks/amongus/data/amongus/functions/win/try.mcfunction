
### too few crewmates left
execute if score impostor_alive data >= crewmate_alive data unless score preventWin data matches 1..2 run function amongus:win/schedule/impostorwin

### no impostor is alive
execute if score impostor_alive data matches 0 unless score preventWin data matches 1..2 run function amongus:win/schedule/crewwin


execute if score preventWin data matches 2 run function amongus:win/main
