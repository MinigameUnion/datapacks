#if score #HIT num_501 matches 0 
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
scoreboard players set #y max_501 625
scoreboard players set #y min_501 0
scoreboard players set #x max_501 6875
scoreboard players set #x min_501 3125
execute if score #x num_501 matches 3125..6875 if score #y num_501 matches 0..625 run function #bullet_501:detailed/hit/others

scoreboard players set #y max_501 2500
scoreboard players set #y min_501 0
scoreboard players set #x max_501 3125
scoreboard players set #x min_501 625
execute if score #HIT num_501 matches 0 if score #x num_501 matches 625..3125 if score #y num_501 matches 0..2500 run function #bullet_501:detailed/hit
scoreboard players set #x max_501 9375
scoreboard players set #x min_501 6875
execute if score #HIT num_501 matches 0 if score #x num_501 matches 6825..9375 if score #y num_501 matches 0..2500 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #y max_501 4375
scoreboard players set #y min_501 1875
scoreboard players set #z max_501 3125
scoreboard players set #z min_501 625
execute if score #HIT num_501 matches 0 if score #z num_501 matches 625..3125 if score #y num_501 matches 1875..4375 run function #bullet_501:detailed/hit
scoreboard players set #z max_501 9375
scoreboard players set #z min_501 6875
execute if score #HIT num_501 matches 0 if score #z num_501 matches 6875..9375 if score #y num_501 matches 1875..4375 run function #bullet_501:detailed/hit

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/campfires/south