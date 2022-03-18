#> utility_001:shapes_util/core/polygon/draw
# @internal

scoreboard players operation #tempCount utility_001 = $count shape_input_001
scoreboard players operation $count shape_input_001 = $corner shape_input_001
function utility_001:shapes_util/core/circle/draw
scoreboard players set #summon-count utility_001 0
scoreboard players operation $count shape_input_001 = #tempCount utility_001
tag @e[type=area_effect_cloud,tag=shape_unfinished_001,tag=shape_output_001] add shape_temp_001
scoreboard players set #from utility_001 0
scoreboard players set #to utility_001 0
scoreboard players operation #to utility_001 += $jump shape_input_001
scoreboard players operation #to utility_001 %= $corner shape_input_001
function utility_001:shapes_util/core/polygon/recursive
kill @e[tag=shape_temp_001]