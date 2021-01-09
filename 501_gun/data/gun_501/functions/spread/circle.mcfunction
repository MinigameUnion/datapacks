execute store result score #tmp spread_501 run scoreboard players operation #vexZ spread_501 = #distanceC spread_501

function gun_501:spread/randomize

scoreboard players operation #Y spread_501 = #vexY spread_501
scoreboard players operation #Y spread_501 *= #pitchCos spread_501
scoreboard players operation #tmp spread_501 *= #pitchSin spread_501
scoreboard players operation #Y spread_501 -= #tmp spread_501

scoreboard players operation #Z spread_501 = #vexY spread_501
scoreboard players operation #Z spread_501 *= #pitchSin spread_501
scoreboard players operation #tmp spread_501 = #vexZ spread_501
scoreboard players operation #tmp spread_501 *= #pitchCos spread_501
scoreboard players operation #Z spread_501 += #tmp spread_501
scoreboard players operation #Z spread_501 /= #10000 num_000

scoreboard players operation #X spread_501 = #vexX spread_501
scoreboard players operation #X spread_501 *= #yawCos spread_501
scoreboard players operation #tmp spread_501 = #Z spread_501
scoreboard players operation #tmp spread_501 *= #yawSin spread_501
scoreboard players operation #X spread_501 += #tmp spread_501

scoreboard players operation #tmp spread_501 = #vexX spread_501
scoreboard players operation #tmp spread_501 *= #yawSin spread_501
scoreboard players operation #Z spread_501 *= #yawCos spread_501
scoreboard players operation #Z spread_501 -= #tmp spread_501

execute store result score @s x_vec_501 run scoreboard players operation #X spread_501 /= #5000000 num_501
execute store result score @s y_vec_501 run scoreboard players operation #Y spread_501 /= #5000000 num_501
execute store result score @s z_vec_501 run scoreboard players operation #Z spread_501 /= #5000000 num_501