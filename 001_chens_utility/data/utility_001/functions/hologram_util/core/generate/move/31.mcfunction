#> utility_001:hologram_util/core/generate/move/31
# @within function
#   utility_001:hologram_util/core/generate/offset/*
#   utility_001:hologram_util/core/generate/base
#   utility_001:hologram_util/core/generate/item_icon

scoreboard players operation #Move utility_001 *= #2 num_000
execute if score #Move utility_001 matches 0.. run function utility_001:hologram_util/core/generate/move/30
execute if score #Move utility_001 matches ..-1 positioned ^ ^ ^107374.1824 run function utility_001:hologram_util/core/generate/move/30