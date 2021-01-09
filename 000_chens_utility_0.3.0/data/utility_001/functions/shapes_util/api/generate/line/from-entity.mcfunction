#> utility_001:shapes_util/api/generate/line/from-entity
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

tp 0-0-1-0-0 @e[tag=shape_from_001,limit=1]
tp 0-0-1-0-1 @e[tag=shape_to_001,limit=1]
function utility_001:shapes_util/core/line/draw
function utility_001:shapes_util/core/master/after_process/line