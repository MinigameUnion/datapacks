#> utility_001:shapes_util/core/master/util/rotate/8
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/rotate/7
execute if score @s utility_001 matches ..-1 rotated ~0.0128 ~ run function utility_001:shapes_util/core/master/util/rotate/7