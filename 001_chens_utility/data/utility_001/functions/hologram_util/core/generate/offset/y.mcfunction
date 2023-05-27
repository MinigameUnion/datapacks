#> utility_001:hologram_util/core/generate/offset/y
#
#
#
# @within function utility_001:hologram_util/core/generate/offset/

execute store result score #Move utility_001 run data get storage utility_001:hologram_util TextGroup[-1].Offset[1] 10000
execute if score #Move utility_001 matches 1.. at @s rotated ~ 90 run function utility_001:hologram_util/core/generate/move/31
execute if score #Move utility_001 matches ..-1 run scoreboard players operation #Move utility_001 *= #-1 num_000
execute if score #Move utility_001 matches 1.. at @s rotated ~ -90 run function utility_001:hologram_util/core/generate/move/31