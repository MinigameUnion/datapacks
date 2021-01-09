#> utility_001:number_util/api/to_bit_array
#
# スコアをbit配列に変換します。
#
# @public
# @input
#   score $toBitArray number_001
#       値
# @output
#   storage utility_001:number_util
#       Array: list(bit)
#           bit配列

data modify storage utility_001:number_util Array set value []
scoreboard players set #i utility_001 0
function utility_001:number_util/core/to_bit_array
scoreboard players reset #i utility_001