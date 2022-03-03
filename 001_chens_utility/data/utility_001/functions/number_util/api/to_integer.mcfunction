#> utility_001:number_util/api/to_integer
#
# bit配列をスコアに変換します。
#
# @public
# @input
#   storage utility_001:number_util
#       Array: list(bit)
#           bit配列
# @output
#   score $Return number_001
#       変換後の値

scoreboard players set $Return number_001 0
data modify storage utility_001:array_util Array set from storage utility_001:number_util Array
function utility_001:array_util/api/reverse
data modify storage utility_001:number_util Array set from storage utility_001:array_util Array
function utility_001:number_util/core/to_integer