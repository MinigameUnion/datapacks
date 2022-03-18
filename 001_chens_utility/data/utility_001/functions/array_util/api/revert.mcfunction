#> utility_001:array_util/api/revert
#
# 配列をキャッシュを元に復元します。
#
# @public
# @input
#   storage utility_001:array_util
#       Array: list(any)
#           move後の配列
#       Array: list(any)
#           move時に生成される配列
# @output
#   storage utility_001:array_util
#       Array: list(any)
#           move前の配列構造

execute if data storage utility_001:array_util Cache[] run function utility_001:array_util/core/revert