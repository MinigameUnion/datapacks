#> utility_001:number_util/core/to_integer
# @internal

execute store result score #bit utility_001 run data get storage utility_001:number_util Array[-1]
data remove storage utility_001:number_util Array[-1]
scoreboard players operation $Return number_001 += $Return number_001
execute if score #bit utility_001 matches 1 run scoreboard players add $Return number_001 1
execute if data storage utility_001:number_util Array[] run function utility_001:number_util/core/to_integer