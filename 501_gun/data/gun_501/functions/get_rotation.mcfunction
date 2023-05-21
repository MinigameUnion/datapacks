data modify entity @s Rotation set from storage gun_501:temp Rotation
execute rotated as @s run function tool_000:get_vector

execute store result score @s x_vec_501 run data get entity 0-0-0-0-2 Pos[0] 200
execute store result score @s y_vec_501 run data get entity 0-0-0-0-2 Pos[1] 200
execute store result score @s z_vec_501 run data get entity 0-0-0-0-2 Pos[2] 200