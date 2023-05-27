#> utility_001:hologram_util/core/generate/move/26
# @within function utility_001:hologram_util/core/generate/move/27

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/25
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^3355.4432 run function utility_001:hologram_util/core/generate/move/25