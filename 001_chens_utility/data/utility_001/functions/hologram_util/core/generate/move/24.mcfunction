#> utility_001:hologram_util/core/generate/move/24
# @within function utility_001:hologram_util/core/generate/move/25

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/23
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^838.8608 run function utility_001:hologram_util/core/generate/move/23