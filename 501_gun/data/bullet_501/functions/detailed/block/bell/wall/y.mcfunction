scoreboard players set #x max_501 5625
scoreboard players set #x min_501 4375
scoreboard players set #y max_501 9375
scoreboard players set #y min_501 8125
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
execute if score #type property_501 matches 2 if score #facing property_501 matches 3 run scoreboard players set #z min_501 1875
execute if score #type property_501 matches 2 if score #facing property_501 matches 4 run scoreboard players set #z max_501 8125
execute if score #HIT num_501 matches 0 if score #x num_501 matches 4375..5625 if score #y num_501 matches 8125..9375 if score #z num_501 >= #z min_501 if score #z num_501 <= #z max_501 run function #bullet_501:detailed/hit/planks/dark_oak

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function #bullet_501:detailed/block/bell/wall/y