#> utility_001:hologram_util/core/generate/move/23
# @within function utility_001:hologram_util/core/generate/move/24

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/22
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^419.4304 run function utility_001:hologram_util/core/generate/move/22