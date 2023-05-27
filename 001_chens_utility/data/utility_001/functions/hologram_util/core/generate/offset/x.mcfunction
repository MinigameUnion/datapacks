#> utility_001:hologram_util/core/generate/offset/x
#
#
#
# @within function utility_001:hologram_util/core/generate/offset/

execute store result score #Move utility_001 run data get storage utility_001:hologram_util TextGroup[-1].Offset[0] 10000

execute if data storage utility_001:hologram_util TextGroup[-1].Setting.TextAlign unless data storage utility_001:hologram_util TextGroup[-1].Setting{TextAlign:"Left"} run function utility_001:hologram_util/core/generate/offset/get_text_length
execute if data storage utility_001:hologram_util TextGroup[-1].Setting{TextAlign:"Center"} run scoreboard players operation $TextLength utility_001 /= #2 num_000
execute if data storage utility_001:hologram_util TextGroup[-1].Setting.TextAlign unless data storage utility_001:hologram_util TextGroup[-1].Setting{TextAlign:"Left"} run scoreboard players operation #Move utility_001 -= $TextLength utility_001
execute if score #Move utility_001 matches 1.. rotated ~ 0 run function utility_001:hologram_util/core/generate/move/31
execute if score #Move utility_001 matches ..-1 run scoreboard players operation #Move utility_001 *= #-1 num_000
execute if score #Move utility_001 matches 1.. rotated ~180 0 run function utility_001:hologram_util/core/generate/move/31