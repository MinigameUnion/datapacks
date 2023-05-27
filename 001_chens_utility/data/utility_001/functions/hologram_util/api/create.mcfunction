#> utility_001:hologram_util/api/create
#
# ホログラムを出力します
#
# @input
#   storage utility_001:hologram_util TextGroup: compound[]
# @output
#   entity ホログラム
# @api

execute if data storage utility_001:hologram_util TextGroup[1] run data modify storage utility_001:array_util Array set from storage utility_001:hologram_util TextGroup
execute if data storage utility_001:hologram_util TextGroup[1] run function utility_001:array_util/api/reverse
execute if data storage utility_001:hologram_util TextGroup[1] run data modify storage utility_001:hologram_util TextGroup set from storage utility_001:array_util Array
execute if data storage utility_001:hologram_util TextGroup[0] run tp 0-0-1-1-0 ~ ~ ~ ~ ~
execute if data storage utility_001:hologram_util TextGroup[0] as 0-0-1-1-0 at 0-0-1-1-0 run function utility_001:hologram_util/core/generate/defer_tp