#> utility_001:hologram_util/core/generate/move/10
# @internal

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/9
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^0.0512 run function utility_001:hologram_util/core/generate/move/9