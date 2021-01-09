execute rotated as @s as 0-0-1f5-0-0 positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result score #Rotation[0] num_501 run data get entity 0-0-1f5-0-0 Rotation[0] 10
execute store result score #Rotation[1] num_501 run data get entity 0-0-1f5-0-0 Rotation[1] 10
scoreboard players operation #RANGE num_000 = #RECOIL[0] num_501
scoreboard players operation #RANGE num_000 *= #2 num_000
function tool_000:random
scoreboard players operation #RANDOM num_000 -= #RECOIL[0] num_501
execute store result entity 0-0-1f5-0-0 Rotation[0] float 0.1 run scoreboard players operation #Rotation[0] num_501 -= #RANDOM num_000
execute store result entity 0-0-1f5-0-0 Rotation[1] float 0.1 run scoreboard players operation #Rotation[1] num_501 -= #RECOIL[1] num_501
#↓視点移動阻害防止用(ちらついたりしたら消去)Motion消されることがわかったので削除
#tp @s 0 0 0
execute rotated as 0-0-1f5-0-0 run tp @s ~ ~ ~ ~ ~

data modify entity 0-0-1f5-0-0 Pos set from storage gun_501:temp Pos