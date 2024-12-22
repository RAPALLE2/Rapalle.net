
execute if score confirm_ejects settings matches 0 run team modify confirm_ejects suffix {"text":": Off"}
execute if score confirm_ejects settings matches 1 run team modify confirm_ejects suffix {"text":": On"}
