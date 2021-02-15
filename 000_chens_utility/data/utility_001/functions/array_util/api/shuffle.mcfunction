#> utility_001:array_util/api/shuffle
#
# 配列の要素をシャッフルします
#
# @public
# @input
#   storage utility_001:array_util
#       Array: list(any)
#           配列データ
# @output
#   storage utility_001:array_util
#       Array: list(any)
#           ランダムな順の配列


execute store result score #ListSize utility_001 if data storage utility_001:array_util Array[]
data modify storage utility_001:array_util ArrayO set value []
function utility_001:array_util/core/shuffle
data modify storage utility_001:array_util Array set from storage utility_001:array_util ArrayO
data remove storage utility_001:array_util ArrayO