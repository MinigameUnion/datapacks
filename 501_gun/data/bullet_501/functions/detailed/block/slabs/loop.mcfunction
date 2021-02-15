execute if score #y min_501 <= #y num_501 if score #y num_501 <= #y max_501 if score #HIT num_501 matches 0 run function #bullet_501:detailed/hit

scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/slabs/loop