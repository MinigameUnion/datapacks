#> utility_001:shapes_util/core/master/util/rotate/21
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/rotate/20
execute if score @s utility_001 matches ..-1 rotated ~104.8576 ~ run function utility_001:shapes_util/core/master/util/rotate/20