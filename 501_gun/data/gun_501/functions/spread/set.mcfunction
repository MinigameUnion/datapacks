scoreboard players operation #spreadC spread_501 = #spread spread_501
execute store result score #spreadC/2 spread_501 run scoreboard players operation #spreadC spread_501 *= #spread num_501
execute store result score #r^2 spread_501 run scoreboard players operation #spreadC/2 spread_501 /= #2 num_000
scoreboard players operation #r^2 spread_501 *= #spreadC/2 spread_501

scoreboard players operation #distanceC spread_501 = #UNIT num_501
scoreboard players operation #distanceC spread_501 *= #100 num_000

tp 0-0-1f5-0-0 0.0 10.0 0.0 0.0 0.0
data modify entity 0-0-1f5-0-0 Rotation[0] set from storage gun_501:temp Rotation[1]
execute as 0-0-1f5-0-0 at @s run tp @s ^ ^ ^1
execute store result score #pitch_sin spread_501 run data get entity 0-0-1f5-0-0 Pos[0] -10000
execute store result score #pitch_cos spread_501 run data get entity 0-0-1f5-0-0 Pos[2] 10000
tp 0-0-1f5-0-0 0.0 10.0 0.0 0.0 0.0
execute store result entity 0-0-1f5-0-0 Rotation[0] float -0.000001 run data get storage gun_501:temp Rotation[0] 1000000
execute as 0-0-1f5-0-0 at @s run tp @s ^ ^ ^1
execute store result score #yaw_sin spread_501 run data get entity 0-0-1f5-0-0 Pos[0] -10000
execute store result score #yaw_cos spread_501 run data get entity 0-0-1f5-0-0 Pos[2] 10000

data modify entity 0-0-1f5-0-0 Pos set from storage gun_501:temp Pos