#> utility_001:shapes_util/core/master/util/move/11
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run function utility_001:shapes_util/core/master/util/move/10
execute if score @s utility_001 matches ..-1 positioned ^ ^ ^0.1024 run function utility_001:shapes_util/core/master/util/move/10