execute store result entity @s Pos[0] double 0.00001 store result score #x num_501 run scoreboard players operation #x pos_501 -= #LOOP x_vec_501
execute store result entity @s Pos[1] double 0.00001 store result score #y num_501 run scoreboard players operation #y pos_501 -= #LOOP y_vec_501
execute store result entity @s Pos[2] double 0.00001 store result score #z num_501 run scoreboard players operation #z pos_501 -= #LOOP z_vec_501
scoreboard players operation #SPEED num_501 += #LOOP num_501
execute positioned as @s run function bullet_501:loop/skip