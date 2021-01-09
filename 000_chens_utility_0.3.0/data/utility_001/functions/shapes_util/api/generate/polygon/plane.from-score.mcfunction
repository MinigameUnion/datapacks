#> utility_001:shapes_util/api/generate/polygon/plane.from-score
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

execute store result entity 0-0-1-0-2 Pos[0] double 0.01 run scoreboard players get $center-X shape_input_001
execute store result entity 0-0-1-0-2 Pos[1] double 0.01 run scoreboard players get $center-Y shape_input_001
execute store result entity 0-0-1-0-2 Pos[2] double 0.01 run scoreboard players get $center-Z shape_input_001
function utility_001:shapes_util/core/polygon/draw
function utility_001:shapes_util/core/master/after_process/polygon