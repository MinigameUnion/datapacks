#> utility_001:hologram_util/core/generate/move/28
# @within function utility_001:hologram_util/core/generate/move/29

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/27
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^13421.7728 run function utility_001:hologram_util/core/generate/move/27