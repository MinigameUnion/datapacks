#> utility_001:shapes_util/core/master/util/rotate/17
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/rotate/16
execute if score @s utility_001 matches ..-1 rotated ~6.5536 ~ run function utility_001:shapes_util/core/master/util/rotate/16