#> utility_001:hologram_util/core/generate/move/3
# @within function utility_001:hologram_util/core/generate/move/4

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/2
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^0.0004 run function utility_001:hologram_util/core/generate/move/2