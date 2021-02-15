scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
scoreboard players set #x max_501 1250
scoreboard players set #x min_501 0
execute if score #x num_501 matches 0..1250 run function #bullet_501:detailed/hit
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 8750
execute if score #x num_501 matches 8750..10000 run function #bullet_501:detailed/hit

scoreboard players set #x min_501 0
scoreboard players set #z max_501 1250
scoreboard players set #z min_501 0
execute if score #z num_501 matches 0..1250 run function #bullet_501:detailed/hit
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 8750
execute if score #z num_501 matches 8750..10000 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 1250
scoreboard players set #y min_501 0
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
execute if score #y num_501 matches 0..1250 run function #bullet_501:detailed/hit

scoreboard players set #y min_501 1250
scoreboard players operation #y max_501 = #y property_501
execute if score #HIT num_501 matches 0 if score #type property_501 matches 1.. if score #y num_501 <= #y max_501 run function #bullet_501:detailed/hit/dirt

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/composter/loop