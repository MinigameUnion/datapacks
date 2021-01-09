#> utility_001:shapes_util/core/master/rotate/common
# @internal

scoreboard players operation #distanceC utility_001 = $distance shape_input_001
scoreboard players operation #distanceC utility_001 *= #1000 num_000
execute store result entity 0-0-1-0-3 Rotation[0] float -1 run data get entity @s Rotation[0]
execute at 0-0-1-0-3 run tp 0-0-1-0-4 ^ ^ ^1
execute store result score #yawSin utility_001 run data get entity 0-0-1-0-4 Pos[0] -10000
execute store result score #yawCos utility_001 run data get entity 0-0-1-0-4 Pos[2] 10000
execute store result entity 0-0-1-0-3 Rotation[0] float 1 run data get entity @s Rotation[1]
execute at 0-0-1-0-3 run tp 0-0-1-0-4 ^ ^ ^1
execute store result score #pitchSin utility_001 run data get entity 0-0-1-0-4 Pos[0] -10000
execute store result score #pitchCos utility_001 run data get entity 0-0-1-0-4 Pos[2] 10000
execute anchored eyes run tp 0-0-1-0-4 ^ ^ ^
execute store result score #baseX utility_001 run data get entity 0-0-1-0-4 Pos[0] 10000
execute store result score #baseY utility_001 run data get entity 0-0-1-0-4 Pos[1] 10000
execute store result score #baseZ utility_001 run data get entity 0-0-1-0-4 Pos[2] 10000