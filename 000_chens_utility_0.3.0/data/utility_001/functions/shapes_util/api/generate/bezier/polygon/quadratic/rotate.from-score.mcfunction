#> utility_001:shapes_util/api/generate/bezier/polygon/quadratic/rotate.from-score
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

execute store result entity 0-0-1-0-2 Pos[0] double 0.01 run scoreboard players get $center-X shape_input_001
execute store result entity 0-0-1-0-2 Pos[1] double 0.01 run scoreboard players get $center-Y shape_input_001
execute store result entity 0-0-1-0-2 Pos[2] double 0.01 run scoreboard players get $center-Z shape_input_001
execute store result entity 0-0-1-0-2 Rotation[0] float 0.01 run scoreboard players get $angle-Yaw shape_input_001
execute store result entity 0-0-1-0-2 Rotation[1] float 0.01 run scoreboard players get $angle-Pitch shape_input_001
execute as 0-0-1-0-2 at @s run function utility_001:shapes_util/core/master/rotate/common
tp 0-0-1-0-2 0.0 0.0 0.0
function utility_001:shapes_util/core/bezier/polygon/quadratic/draw
scoreboard players set #rotate-direction utility_001 1
execute as @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001] at @s run function utility_001:shapes_util/core/master/rotate/run
function utility_001:shapes_util/core/master/after_process/polygon