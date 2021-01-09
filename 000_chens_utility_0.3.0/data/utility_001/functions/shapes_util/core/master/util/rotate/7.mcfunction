#> utility_001:shapes_util/core/master/util/rotate/7
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/rotate/6
execute if score @s utility_001 matches ..-1 rotated ~0.0064 ~ run function utility_001:shapes_util/core/master/util/rotate/6