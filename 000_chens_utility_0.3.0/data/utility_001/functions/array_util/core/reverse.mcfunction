#> utility_001:array_util/core/reverse
# @internal

execute store result score #arrayX utility_001 if data storage utility_001:array_util Array[]
function utility_001:array_util/core/move
data modify storage utility_001:array_util Array set from storage utility_001:array_util Cache
function utility_001:array_util/core/force_delete_cache