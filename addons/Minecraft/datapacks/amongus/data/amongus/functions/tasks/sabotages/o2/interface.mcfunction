
tellraw @s ["",{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]

data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#000000"}'

data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#000000"}'
data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#000000"}'

data modify storage sabotages:o2 button.delete set value '{"text":"█","color":"#ff0000","clickEvent":{"action":"run_command","value":"/trigger o2.btn.del"}}'
data modify storage sabotages:o2 button.enter set value '{"text":"█","color":"#00ff00","clickEvent":{"action":"run_command","value":"/trigger o2.btn.ent"}}'
data modify storage sabotages:o2 button.a set value '{"text":"█","color":"#006400","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 1"}}'
data modify storage sabotages:o2 button.b set value '{"text":"█","color":"#f735ff","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 2"}}'
data modify storage sabotages:o2 button.c set value '{"text":"█","color":"#0000ff","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 3"}}'
data modify storage sabotages:o2 button.d set value '{"text":"█","color":"#8b4513","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 4"}}'
data modify storage sabotages:o2 button.e set value '{"text":"█","color":"#00fff0","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 5"}}'
data modify storage sabotages:o2 button.f set value '{"text":"█","color":"#8b0000","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 6"}}'
data modify storage sabotages:o2 button.g set value '{"text":"█","color":"#7d26cd","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 7"}}'
data modify storage sabotages:o2 button.h set value '{"text":"█","color":"#ffd700","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 8"}}'
data modify storage sabotages:o2 button.i set value '{"text":"█","color":"#ff7f00","clickEvent":{"action":"run_command","value":"/trigger o2.btn.put set 9"}}'

execute if score @s o2.values.a matches 1 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#006400"}'
execute if score @s o2.values.a matches 2 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.values.a matches 3 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.values.a matches 4 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.values.a matches 5 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.values.a matches 6 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.values.a matches 7 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.values.a matches 8 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.values.a matches 9 run data modify storage sabotages:o2 values.a set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.values.b matches 1 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#006400"}'
execute if score @s o2.values.b matches 2 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.values.b matches 3 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.values.b matches 4 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.values.b matches 5 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.values.b matches 6 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.values.b matches 7 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.values.b matches 8 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.values.b matches 9 run data modify storage sabotages:o2 values.b set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.values.c matches 1 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#006400"}'
execute if score @s o2.values.c matches 2 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.values.c matches 3 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.values.c matches 4 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.values.c matches 5 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.values.c matches 6 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.values.c matches 7 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.values.c matches 8 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.values.c matches 9 run data modify storage sabotages:o2 values.c set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.values.d matches 1 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#006400"}'
execute if score @s o2.values.d matches 2 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.values.d matches 3 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.values.d matches 4 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.values.d matches 5 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.values.d matches 6 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.values.d matches 7 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.values.d matches 8 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.values.d matches 9 run data modify storage sabotages:o2 values.d set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.values.e matches 1 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#006400"}'
execute if score @s o2.values.e matches 2 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.values.e matches 3 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.values.e matches 4 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.values.e matches 5 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.values.e matches 6 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.values.e matches 7 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.values.e matches 8 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.values.e matches 9 run data modify storage sabotages:o2 values.e set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.values.f matches 1 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#006400"}'
execute if score @s o2.values.f matches 2 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.values.f matches 3 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.values.f matches 4 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.values.f matches 5 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.values.f matches 6 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.values.f matches 7 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.values.f matches 8 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.values.f matches 9 run data modify storage sabotages:o2 values.f set value '{"text":"█","color":"#ff7f00"}'

####

execute if score @s o2.input.a matches 1 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#006400"}'
execute if score @s o2.input.a matches 2 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.input.a matches 3 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.input.a matches 4 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.input.a matches 5 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.input.a matches 6 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.input.a matches 7 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.input.a matches 8 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.input.a matches 9 run data modify storage sabotages:o2 input.a set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.input.b matches 1 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#006400"}'
execute if score @s o2.input.b matches 2 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.input.b matches 3 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.input.b matches 4 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.input.b matches 5 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.input.b matches 6 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.input.b matches 7 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.input.b matches 8 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.input.b matches 9 run data modify storage sabotages:o2 input.b set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.input.c matches 1 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#006400"}'
execute if score @s o2.input.c matches 2 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.input.c matches 3 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.input.c matches 4 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.input.c matches 5 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.input.c matches 6 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.input.c matches 7 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.input.c matches 8 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.input.c matches 9 run data modify storage sabotages:o2 input.c set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.input.d matches 1 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#006400"}'
execute if score @s o2.input.d matches 2 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.input.d matches 3 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.input.d matches 4 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.input.d matches 5 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.input.d matches 6 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.input.d matches 7 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.input.d matches 8 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.input.d matches 9 run data modify storage sabotages:o2 input.d set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.input.e matches 1 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#006400"}'
execute if score @s o2.input.e matches 2 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.input.e matches 3 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.input.e matches 4 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.input.e matches 5 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.input.e matches 6 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.input.e matches 7 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.input.e matches 8 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.input.e matches 9 run data modify storage sabotages:o2 input.e set value '{"text":"█","color":"#ff7f00"}'


execute if score @s o2.input.f matches 1 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#006400"}'
execute if score @s o2.input.f matches 2 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#f735ff"}'
execute if score @s o2.input.f matches 3 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#0000ff"}'
execute if score @s o2.input.f matches 4 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#8b4513"}'
execute if score @s o2.input.f matches 5 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#00fff0"}'
execute if score @s o2.input.f matches 6 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#8b0000"}'
execute if score @s o2.input.f matches 7 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#7d26cd"}'
execute if score @s o2.input.f matches 8 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#ffd700"}'
execute if score @s o2.input.f matches 9 run data modify storage sabotages:o2 input.f set value '{"text":"█","color":"#ff7f00"}'


tellraw @s [{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"nbt":"values.a","storage":"sabotages:o2","interpret":true},{"nbt":"values.b","storage":"sabotages:o2","interpret":true},{"nbt":"values.c","storage":"sabotages:o2","interpret":true},{"nbt":"values.d","storage":"sabotages:o2","interpret":true},{"nbt":"values.e","storage":"sabotages:o2","interpret":true},{"nbt":"values.f","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"nbt":"input.a","storage":"sabotages:o2","interpret":true},{"nbt":"input.b","storage":"sabotages:o2","interpret":true},{"nbt":"input.c","storage":"sabotages:o2","interpret":true},{"nbt":"input.d","storage":"sabotages:o2","interpret":true},{"nbt":"input.e","storage":"sabotages:o2","interpret":true},{"nbt":"input.f","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.delete","storage":"sabotages:o2","interpret":true},{"nbt":"button.delete","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.enter","storage":"sabotages:o2","interpret":true},{"nbt":"button.enter","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.a","storage":"sabotages:o2","interpret":true},{"nbt":"button.a","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.b","storage":"sabotages:o2","interpret":true},{"nbt":"button.b","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.c","storage":"sabotages:o2","interpret":true},{"nbt":"button.c","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.a","storage":"sabotages:o2","interpret":true},{"nbt":"button.a","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.b","storage":"sabotages:o2","interpret":true},{"nbt":"button.b","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.c","storage":"sabotages:o2","interpret":true},{"nbt":"button.c","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.d","storage":"sabotages:o2","interpret":true},{"nbt":"button.d","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.e","storage":"sabotages:o2","interpret":true},{"nbt":"button.e","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.f","storage":"sabotages:o2","interpret":true},{"nbt":"button.f","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.d","storage":"sabotages:o2","interpret":true},{"nbt":"button.d","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.e","storage":"sabotages:o2","interpret":true},{"nbt":"button.e","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.f","storage":"sabotages:o2","interpret":true},{"nbt":"button.f","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.g","storage":"sabotages:o2","interpret":true},{"nbt":"button.g","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.h","storage":"sabotages:o2","interpret":true},{"nbt":"button.h","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.i","storage":"sabotages:o2","interpret":true},{"nbt":"button.i","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"nbt":"button.g","storage":"sabotages:o2","interpret":true},{"nbt":"button.g","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.h","storage":"sabotages:o2","interpret":true},{"nbt":"button.h","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"nbt":"button.i","storage":"sabotages:o2","interpret":true},{"nbt":"button.i","storage":"sabotages:o2","interpret":true},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#9e9e9e"},{"text":"█","color":"#515151"},{"text":"\n█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"},{"text":"█","color":"#515151"}]

function amongus:tasks/sabotages/o2/reenable
