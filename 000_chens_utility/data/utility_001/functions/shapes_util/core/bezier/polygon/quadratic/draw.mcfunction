#> utility_001:shapes_util/core/bezier/polygon/quadratic/draw
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
scoreboard players operation #modifier-base utility_001 = $vezier-modifier shape_input_001
scoreboard players operation #modifier-base utility_001 *= #100 num_000
scoreboard players operation #temp utility_001 = $corner shape_input_001
scoreboard players operation #temp utility_001 *= #10 num_000
scoreboard players operation #temp utility_001 /= $jump shape_input_001
execute if score #temp utility_001 matches 20 run scoreboard players set #center-dir utility_001 0
execute if score #temp utility_001 matches ..20 run scoreboard players set #center-dir utility_001 -1
execute if score #temp utility_001 matches 20.. run scoreboard players set #center-dir utility_001 1
execute if score $ellipse-modifier shape_input_001 matches ..-1 run scoreboard players operation #center-dir utility_001 *= #-1 num_000
execute if score $vezier-modifier shape_input_001 matches ..-1 run scoreboard players operation #center-dir utility_001 *= #-1 num_000
execute if score $vezier-modifier shape_input_001 matches ..-1 run scoreboard players operation #modifier-base utility_001 *= #-1 num_000
execute unless score #center-dir utility_001 matches 0 run function utility_001:shapes_util/core/bezier/polygon/quadratic/recursive
execute if score #center-dir utility_001 matches 0 run function utility_001:shapes_util/core/polygon/recursive
kill @e[type=area_effect_cloud,tag=shape_temp_001]