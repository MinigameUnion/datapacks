#> utility_001:shapes_util/api/generate/bezier/line/cubic/from-entity
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

tp 0-0-1-0-0 @e[tag=shape_from_001,limit=1]
tp 0-0-1-0-5 @e[tag=shape_control-a_001,limit=1]
tp 0-0-1-0-6 @e[tag=shape_control-b_001,limit=1]
tp 0-0-1-0-1 @e[tag=shape_to_001,limit=1]
function utility_001:shapes_util/core/bezier/line/cubic/draw
function utility_001:shapes_util/core/master/after_process/line