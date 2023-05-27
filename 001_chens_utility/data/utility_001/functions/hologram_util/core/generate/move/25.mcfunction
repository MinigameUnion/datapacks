#> utility_001:hologram_util/core/generate/move/25
# @within function utility_001:hologram_util/core/generate/move/26

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/24
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^1677.7216 run function utility_001:hologram_util/core/generate/move/24