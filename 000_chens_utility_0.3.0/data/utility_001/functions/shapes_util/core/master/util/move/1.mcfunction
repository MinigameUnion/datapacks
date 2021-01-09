#> utility_001:shapes_util/core/master/util/move/1
# @internal

scoreboard players operation @s utility_001 *= #2 num_000
execute if score @s utility_001 matches 0.. run tp @s ~ ~ ~
execute if score @s utility_001 matches ..-1 positioned ^ ^ ^0.0001 run tp @s ~ ~ ~