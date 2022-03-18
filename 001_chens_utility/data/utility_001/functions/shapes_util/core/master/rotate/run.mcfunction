#> utility_001:shapes_util/core/master/rotate/run
# @internal

execute store result score #vexX utility_001 run data get entity @s Pos[0] 10000
execute store result score #vexY utility_001 run data get entity @s Pos[2] 10000
scoreboard players operation #vexZ utility_001 = #distanceC utility_001
scoreboard players operation #Y utility_001 = #vexY utility_001
scoreboard players operation #Y utility_001 *= #pitchCos utility_001
scoreboard players operation #tmp utility_001 = #vexZ utility_001
scoreboard players operation #tmp utility_001 *= #pitchSin utility_001
scoreboard players operation #Y utility_001 -= #tmp utility_001
scoreboard players operation #Z utility_001 = #vexY utility_001
scoreboard players operation #Z utility_001 *= #pitchSin utility_001
scoreboard players operation #tmp utility_001 = #vexZ utility_001
scoreboard players operation #tmp utility_001 *= #pitchCos utility_001
scoreboard players operation #Z utility_001 += #tmp utility_001
scoreboard players operation #Z utility_001 /= #10000 num_000
scoreboard players operation #X utility_001 = #vexX utility_001
scoreboard players operation #X utility_001 *= #yawCos utility_001
scoreboard players operation #tmp utility_001 = #Z utility_001
scoreboard players operation #tmp utility_001 *= #yawSin utility_001
scoreboard players operation #X utility_001 += #tmp utility_001
scoreboard players operation #tmp utility_001 = #vexX utility_001
scoreboard players operation #tmp utility_001 *= #yawSin utility_001
scoreboard players operation #Z utility_001 *= #yawCos utility_001
scoreboard players operation #Z utility_001 -= #tmp utility_001
scoreboard players operation #X utility_001 /= #10000 num_000
scoreboard players operation #Y utility_001 /= #10000 num_000
scoreboard players operation #Z utility_001 /= #10000 num_000
scoreboard players operation #baseXC utility_001 = #baseX utility_001
scoreboard players operation #baseYC utility_001 = #baseY utility_001
scoreboard players operation #baseZC utility_001 = #baseZ utility_001
scoreboard players operation #baseXC utility_001 += #X utility_001
scoreboard players operation #baseYC utility_001 += #Y utility_001
scoreboard players operation #baseZC utility_001 += #Z utility_001
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #baseXC utility_001
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #baseYC utility_001
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #baseZC utility_001
execute if score #rotate-direction utility_001 matches 1 if entity @s[tag=!shape_temp_001] run function utility_001:shapes_util/core/master/rotate/direction