#> utility_001:shapes_util/core/line/recursive
# @internal

function utility_001:shapes_util/core/master/util/move/31
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[shape_output_001,shape_unfinished_001]}
execute facing entity @s feet run tp @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001,tag=!shape_temp_001,distance=..0.0001,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001,tag=!shape_temp_001,distance=..0.0001,limit=1] shape_summon_001 = #summon-count utility_001
scoreboard players add #summon-count utility_001 1
scoreboard players add #tp-count utility_001 1
execute if score $count shape_input_001 > #tp-count utility_001 run scoreboard players operation @s utility_001 = #particle-distance utility_001
execute if score $count shape_input_001 > #tp-count utility_001 at @s run function utility_001:shapes_util/core/line/recursive