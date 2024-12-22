
execute if score @s failed matches 1.. run function amongus:tasks/course/end

execute if score @s course.a matches 2 run function amongus:tasks/course/a/2
execute if score @s course.a matches 4 run function amongus:tasks/course/a/3
execute if score @s course.a matches 6 run function amongus:tasks/course/a/4
execute if score @s course.a matches 8 run function amongus:tasks/course/a/5

execute if score @s course.b matches 2 run function amongus:tasks/course/b/2
execute if score @s course.b matches 4 run function amongus:tasks/course/b/3
execute if score @s course.b matches 6 run function amongus:tasks/course/b/4
execute if score @s course.b matches 8 run function amongus:tasks/course/b/5

execute if score @s course.c matches 2 run function amongus:tasks/course/c/2
execute if score @s course.c matches 4 run function amongus:tasks/course/c/3
execute if score @s course.c matches 6 run function amongus:tasks/course/c/4
execute if score @s course.c matches 8 run function amongus:tasks/course/c/5

execute if score @s course.a matches 9 if score tick data matches 10 run function amongus:tasks/course/end
execute if score @s course.b matches 9 if score tick data matches 10 run function amongus:tasks/course/end
execute if score @s course.c matches 9 if score tick data matches 10 run function amongus:tasks/course/end
