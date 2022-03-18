#> utility_001:shapes_util/core/master/util/move/4
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/move/3
execute if score @s utility_001 matches ..-1 positioned ^ ^ ^0.0008 run function utility_001:shapes_util/core/master/util/move/3