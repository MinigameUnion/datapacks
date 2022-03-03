#> utility_001:hologram_util/core/generate/move/6
# @internal

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/5
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^0.0032 run function utility_001:hologram_util/core/generate/move/5