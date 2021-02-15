#> utility_001:array_util/core/move
# @internal

scoreboard players remove #arrayX utility_001 1
data modify storage utility_001:array_util Cache append from storage utility_001:array_util Array[-1]
data remove storage utility_001:array_util Array[-1]
execute if score #arrayX utility_001 matches 1.. run function utility_001:array_util/core/move