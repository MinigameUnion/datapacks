#> utility_001:hologram_util/core/generate/move/14
# @within function utility_001:hologram_util/core/generate/move/15

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/13
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^0.8192 run function utility_001:hologram_util/core/generate/move/13