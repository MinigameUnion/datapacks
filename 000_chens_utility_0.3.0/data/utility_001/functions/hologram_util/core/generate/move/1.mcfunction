#> utility_001:hologram_util/core/generate/move/1
# @internal

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run tp @s ~ ~ ~
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^0.0001 run tp @s ~ ~ ~