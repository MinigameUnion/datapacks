#> utility_001:shapes_util/api/generate/bezier/line/quadratic/from-score
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

execute store result entity 0-0-1-0-0 Pos[0] double 0.01 run scoreboard players get $from-X shape_input_001
execute store result entity 0-0-1-0-0 Pos[1] double 0.01 run scoreboard players get $from-Y shape_input_001
execute store result entity 0-0-1-0-0 Pos[2] double 0.01 run scoreboard players get $from-Z shape_input_001
execute store result entity 0-0-1-0-5 Pos[0] double 0.01 run scoreboard players get $control-a-X shape_input_001
execute store result entity 0-0-1-0-5 Pos[1] double 0.01 run scoreboard players get $control-a-Y shape_input_001
execute store result entity 0-0-1-0-5 Pos[2] double 0.01 run scoreboard players get $control-a-Z shape_input_001
execute store result entity 0-0-1-0-1 Pos[0] double 0.01 run scoreboard players get $to-X shape_input_001
execute store result entity 0-0-1-0-1 Pos[1] double 0.01 run scoreboard players get $to-Y shape_input_001
execute store result entity 0-0-1-0-1 Pos[2] double 0.01 run scoreboard players get $to-Z shape_input_001
function utility_001:shapes_util/core/bezier/line/quadratic/draw
function utility_001:shapes_util/core/master/after_process/line