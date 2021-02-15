#> utility_001:array_util/core/shuffle
# @internal

scoreboard players operation #X utility_001 *= #A utility_001
scoreboard players operation #X utility_001 %= #M utility_001
scoreboard players operation #arrayX utility_001 = #X utility_001
scoreboard players operation #arrayX utility_001 %= #ListSize utility_001
execute if score #arrayX utility_001 matches 1.. run function utility_001:array_util/core/move
data modify storage utility_001:array_util ArrayO append from storage utility_001:array_util Array[-1]
data remove storage utility_001:array_util Array[-1]
data modify storage utility_001:array_util Array append from storage utility_001:array_util Cache[]
function utility_001:array_util/core/force_delete_cache
scoreboard players remove #ListSize utility_001 1
execute if score #ListSize utility_001 matches 1.. run function utility_001:array_util/core/shuffle