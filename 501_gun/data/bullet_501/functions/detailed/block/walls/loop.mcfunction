scoreboard players set #x max_501 7500
scoreboard players set #x min_501 2500
scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
scoreboard players set #z max_501 7500
scoreboard players set #z min_501 2500
execute if score #up property_501 matches 1 if score #x num_501 matches 2500..7500 if score #z num_501 matches 2500..7500 run function #bullet_501:detailed/hit

scoreboard players set #y min_501 0

scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 6875
scoreboard players set #z min_501 3125
scoreboard players set #y max_501 8750
execute if score #east property_501 matches 2 run scoreboard players set #y max_501 10000
execute if score #east property_501 matches 1.. if score #HIT num_501 matches 0 if score #x num_501 matches 5000..10000 if score #z num_501 matches 3125..6875 if score #y num_501 <= #y max_501 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 8750
execute if score #west property_501 matches 2 run scoreboard players set #y max_501 10000
execute if score #west property_501 matches 1.. if score #HIT num_501 matches 0 if score #x num_501 matches 0..5000 if score #z num_501 matches 3125..6875 if score #y num_501 <= #y max_501 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
scoreboard players set #x max_501 6875
scoreboard players set #x min_501 3125
scoreboard players set #y max_501 8750
execute if score #south property_501 matches 2 run scoreboard players set #y max_501 10000
execute if score #south property_501 matches 1.. if score #HIT num_501 matches 0 if score #z num_501 matches 5000..10000 if score #x num_501 matches 3125..6875 if score #y num_501 <= #y max_501 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 8750
execute if score #north property_501 matches 2 run scoreboard players set #y max_501 10000
execute if score #north property_501 matches 1.. if score #HIT num_501 matches 0 if score #z num_501 matches 0..5000 if score #x num_501 matches 3125..6875 if score #y num_501 <= #y max_501 run function #bullet_501:detailed/hit

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/walls/loop