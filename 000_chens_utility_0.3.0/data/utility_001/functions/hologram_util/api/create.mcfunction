#> utility_001:hologram_util/api/create
#
# ホログラムを出力します
#
# @public
# @input
#   storage utility_001:hologram_util
#       TextGroup: compound[]
#           詳しい説明は説明markdownを参照してください。
# @output
#   entity ホログラム

execute if data storage utility_001:hologram_util TextGroup[1] run data modify storage utility_001:array_util Array set from storage utility_001:hologram_util TextGroup
execute if data storage utility_001:hologram_util TextGroup[1] run function utility_001:array_util/api/reverse
execute if data storage utility_001:hologram_util TextGroup[1] run data modify storage utility_001:hologram_util TextGroup set from storage utility_001:array_util Array
execute if data storage utility_001:hologram_util TextGroup[0] run tp 0-0-1-1-0 ~ ~ ~ ~ ~
execute if data storage utility_001:hologram_util TextGroup[0] as 0-0-1-1-0 at 0-0-1-1-0 run function utility_001:hologram_util/core/generate/offset