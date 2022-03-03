#> utility_001:number_util/core/to_bit_array
# @internal

execute if score $toBitArray number_001 matches 00.. run data modify storage utility_001:number_util Array append value 0
execute if score $toBitArray number_001 matches ..-1 run data modify storage utility_001:number_util Array append value 1
scoreboard players operation $toBitArray number_001 += $toBitArray number_001
scoreboard players add #i utility_001 1
execute if score #i utility_001 < #2^5 num_000 run function utility_001:number_util/core/to_bit_array