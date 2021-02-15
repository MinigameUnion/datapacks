#> utility_001:shapes_util/core/circle/recursive
# @internal

function utility_001:shapes_util/core/master/util/rotate/22
tp 0-0-1-0-4 ^ ^ ^1
execute store result score #particle-pos-X utility_001 run data get entity 0-0-1-0-4 Pos[0] 100
execute store result score #particle-pos-Z utility_001 run data get entity 0-0-1-0-4 Pos[2] 100
scoreboard players operation #particle-pos-X utility_001 *= $radius shape_input_001
scoreboard players operation #particle-pos-Z utility_001 *= $radius shape_input_001
scoreboard players operation #particle-pos-Z utility_001 *= $ellipse-modifier shape_input_001
scoreboard players operation #particle-pos-Z utility_001 /= #100 num_000
execute unless score $ellipse-modifier shape_input_001 matches 100 run function utility_001:shapes_util/core/master/rotate/around_y
scoreboard players operation #particle-pos-X utility_001 /= #100 num_000
scoreboard players operation #particle-pos-Z utility_001 /= #100 num_000
scoreboard players operation #particle-pos-X utility_001 += #center-X utility_001
scoreboard players operation #particle-pos-Y utility_001 = #center-Y utility_001
scoreboard players operation #particle-pos-Z utility_001 += #center-Z utility_001
execute store result entity 0-0-1-0-4 Pos[0] double 0.01 run scoreboard players get #particle-pos-X utility_001
execute store result entity 0-0-1-0-4 Pos[1] double 0.01 run scoreboard players get #particle-pos-Y utility_001
execute store result entity 0-0-1-0-4 Pos[2] double 0.01 run scoreboard players get #particle-pos-Z utility_001
execute at 0-0-1-0-4 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[shape_output_001,shape_unfinished_001]}
execute at 0-0-1-0-4 run scoreboard players operation @e[type=area_effect_cloud,tag=shape_output_001,tag=shape_unfinished_001,tag=!shape_temp_001,distance=..0.0001,limit=1] shape_summon_001 = #summon-count utility_001
scoreboard players add #summon-count utility_001 1
scoreboard players add #tp-count utility_001 1
execute if score $count shape_input_001 > #tp-count utility_001 run scoreboard players operation @s utility_001 = #particle-distance utility_001
execute if score $count shape_input_001 > #tp-count utility_001 at @s run function utility_001:shapes_util/core/circle/recursive