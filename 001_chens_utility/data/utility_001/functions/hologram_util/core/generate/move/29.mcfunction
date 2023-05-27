#> utility_001:hologram_util/core/generate/move/29
# @within function utility_001:hologram_util/core/generate/move/30

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/28
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^26843.5456 run function utility_001:hologram_util/core/generate/move/28