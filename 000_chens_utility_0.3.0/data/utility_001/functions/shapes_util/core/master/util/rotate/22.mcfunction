#> utility_001:shapes_util/core/master/util/rotate/22
# @internal

scoreboard players operation @s utility_001 *= #2^10 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/rotate/21
execute if score @s utility_001 matches ..-1 rotated ~209.7152 ~ run function utility_001:shapes_util/core/master/util/rotate/21