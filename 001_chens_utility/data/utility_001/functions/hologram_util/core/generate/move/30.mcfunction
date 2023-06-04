#> utility_001:hologram_util/core/generate/move/30
# @within function utility_001:hologram_util/core/generate/move/31

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/29
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^53687.0912 run function utility_001:hologram_util/core/generate/move/29