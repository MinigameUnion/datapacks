#> utility_001:shapes_util/api/generate/polygon/rotate.from-storage
# @public
# @input
#   詳しい説明は説明markdownを参照してください。

data modify entity 0-0-1-0-2 Pos set from storage utility_001:shapes_util InputPos[0]
data modify entity 0-0-1-0-2 Rotation set from storage utility_001:shapes_util InputRotation
execute as 0-0-1-0-2 at @s run function utility_001:shapes_util/core/master/rotate/common
tp 0-0-1-0-2 0.0 0.0 0.0
function utility_001:shapes_util/core/polygon/draw
scoreboard players set #rotate-direction utility_001 1
execute as @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001] at @s run function utility_001:shapes_util/core/master/rotate/run
function utility_001:shapes_util/core/master/after_process/polygon