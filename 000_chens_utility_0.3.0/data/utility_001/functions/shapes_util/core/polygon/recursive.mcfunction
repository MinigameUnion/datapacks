#> utility_001:shapes_util/core/polygon/recursive
# @internal

execute as @e[type=area_effect_cloud,tag=shape_temp_001] if score @s shape_summon_001 = #from utility_001 at @s run tp 0-0-1-0-0 ~ ~ ~
execute as @e[type=area_effect_cloud,tag=shape_temp_001] if score @s shape_summon_001 = #to utility_001 at @s run tp 0-0-1-0-1 ~ ~ ~
function utility_001:shapes_util/core/line/draw
scoreboard players add #from utility_001 1
scoreboard players add #to utility_001 1
scoreboard players operation #to utility_001 %= $corner shape_input_001
execute if score #from utility_001 < $corner shape_input_001 run function utility_001:shapes_util/core/polygon/recursive