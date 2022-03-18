#> utility_001:shapes_util/core/master/util/move/15
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/move/14
execute if score @s utility_001 matches ..-1 positioned ^ ^ ^1.6384 run function utility_001:shapes_util/core/master/util/move/14