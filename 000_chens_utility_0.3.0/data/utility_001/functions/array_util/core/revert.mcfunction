#> utility_001:array_util/core/revert
# @internal
data modify storage utility_001:array_util Array append from storage utility_001:array_util Cache[-1]
data remove storage utility_001:array_util Cache[-1]
execute if data storage utility_001:array_util Cache[] run function utility_001:array_util/core/revert