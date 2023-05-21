scoreboard players operation #BASE num_501 = #min num_501
execute store result score #BASE x_vec_501 store result score #BASE y_vec_501 store result score #BASE z_vec_501 run scoreboard players operation #BASE num_501 -= #SKIP num_501
#scoreboard players set #SKIP x_vec_501 0
#scoreboard players set #SKIP y_vec_501 0
#scoreboard players set #SKIP z_vec_501 0

scoreboard players operation #BASE x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #BASE y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #BASE z_vec_501 *= #BULLET z_vec_501

execute store result score #x num_501 run scoreboard players operation #X num_501 += #BASE x_vec_501
execute store result score #y num_501 run scoreboard players operation #Y num_501 += #BASE y_vec_501
execute store result score #z num_501 run scoreboard players operation #Z num_501 += #BASE z_vec_501

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation #x num_501 -= #DETAILED x_vec_501
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation #y num_501 -= #DETAILED y_vec_501
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation #z num_501 -= #DETAILED z_vec_501

#function bullet_501:detailed/hit/get_face