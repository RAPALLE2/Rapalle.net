
execute if score anonymous_votes settings matches 0 run team modify anonymous_votes suffix {"text":": Off"}
execute if score anonymous_votes settings matches 1 run team modify anonymous_votes suffix {"text":": On"}
execute if score anonymous_votes settings matches 2 run team modify anonymous_votes suffix {"text":": special"}
