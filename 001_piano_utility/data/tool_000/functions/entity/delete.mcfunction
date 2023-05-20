#> tool_000:entity/delete
# @api

execute if predicate tool_000:entity/vehicle run ride @s dismount
execute if predicate tool_000:entity/passenger on passengers at @s run function tool_000:entity/delete
data modify entity @s Tags set value []
execute if entity @s[type=#tool_000:living] run function tool_000:entity/delete/living
execute if entity @s[type=#tool_000:killable] run kill @s