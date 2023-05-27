#> utility_001:hologram_util/core/generate/move/18
# @within function utility_001:hologram_util/core/generate/move/19

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/17
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^13.1072 run function utility_001:hologram_util/core/generate/move/17