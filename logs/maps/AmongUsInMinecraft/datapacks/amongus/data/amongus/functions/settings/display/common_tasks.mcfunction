
execute if score common_tasks settings matches 0 run team modify common_tasks suffix {"text":" Tasks: 0"}
execute if score common_tasks settings matches 1 run team modify common_tasks suffix {"text":" Tasks: 1"}
execute if score common_tasks settings matches 2 run team modify common_tasks suffix {"text":" Tasks: 2"}
