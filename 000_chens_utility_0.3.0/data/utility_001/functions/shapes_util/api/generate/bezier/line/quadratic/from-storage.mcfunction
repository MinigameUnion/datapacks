#> utility_001:shapes_util/api/generate/bezier/line/quadratic/from-storage
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

data modify entity 0-0-1-0-0 Pos set from storage utility_001:shapes_util InputPos[0]
data modify entity 0-0-1-0-5 Pos set from storage utility_001:shapes_util InputPos[1]
data modify entity 0-0-1-0-1 Pos set from storage utility_001:shapes_util InputPos[2]
function utility_001:shapes_util/core/bezier/line/quadratic/draw
function utility_001:shapes_util/core/master/after_process/line