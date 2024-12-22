
execute if score visual_tasks settings matches 0 run team modify visual_tasks suffix {"text":" Tasks: Off"}
execute if score visual_tasks settings matches 1 run team modify visual_tasks suffix {"text":" Tasks: On"}
