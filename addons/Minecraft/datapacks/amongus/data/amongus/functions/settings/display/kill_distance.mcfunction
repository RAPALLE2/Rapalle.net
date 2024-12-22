
execute if score kill_distance settings matches 0 run team modify kill_distance suffix {"text":": Short"}
execute if score kill_distance settings matches 1 run team modify kill_distance suffix {"text":": Medium"}
execute if score kill_distance settings matches 2 run team modify kill_distance suffix {"text":": Long"}
