#> utility_001:shapes_util/api/generate/bezier/polygon/quadratic/rotate.from-entity
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

execute as @e[tag=shape_center_001,limit=1] at @s run function utility_001:shapes_util/core/master/rotate/common
tp 0-0-1-0-2 0.0 0.0 0.0
function utility_001:shapes_util/core/bezier/polygon/quadratic/draw
scoreboard players set #rotate-direction utility_001 1
execute as @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001] at @s run function utility_001:shapes_util/core/master/rotate/run
function utility_001:shapes_util/core/master/after_process/polygon