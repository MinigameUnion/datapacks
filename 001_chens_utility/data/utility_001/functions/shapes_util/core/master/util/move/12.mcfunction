#> utility_001:shapes_util/core/master/util/move/12
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/move/11
execute if score @s utility_001 matches ..-1 positioned ^ ^ ^0.2048 run function utility_001:shapes_util/core/master/util/move/11