#> tool_000:entity/delete/living
# @within
#   function tool_000:entity/delete

tp @s 0.0 -128.0 0.0
execute if entity @s[type=#tool_000:has_size] run data modify entity @s Size set value 0
data merge entity @s {Health:0.0f,DeathTime:19s,DeathLootTable:"tool_000:empty",PersistenceRequired:0b}