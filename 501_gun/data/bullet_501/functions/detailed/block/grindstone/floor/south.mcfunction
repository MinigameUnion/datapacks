scoreboard players set #x max_501 7500
scoreboard players set #x min_501 2500
scoreboard players set #y max_501 10000
scoreboard players set #y min_501 2500
scoreboard players set #z max_501 8750
scoreboard players set #z min_501 1250
execute if score #x num_501 matches 2500..7500 if score #y num_501 matches 2500..10000 if score #z num_501 matches 1250..8750 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 2500
scoreboard players set #x min_501 1250
scoreboard players set #y max_501 8125
scoreboard players set #y min_501 4375
scoreboard players set #z max_501 6875
scoreboard players set #z min_501 3125
execute if score #HIT num_501 matches 0 if score #x num_501 matches 1250..2500 if score #z num_501 matches 3125..6875 if score #y num_501 matches 4375..8125 run function #bullet_501:detailed/hit/planks/dark_oak
scoreboard players set #x max_501 8750
scoreboard players set #x min_501 7500
execute if score #HIT num_501 matches 0 if score #x num_501 matches 7500..8750 if score #z num_501 matches 3125..6875 if score #y num_501 matches 4375..8125 run function #bullet_501:detailed/hit/planks/dark_oak

scoreboard players set #x max_501 2500
scoreboard players set #x min_501 1250
scoreboard players set #y max_501 8125
scoreboard players set #y min_501 0
scoreboard players set #z max_501 6250
scoreboard players set #z min_501 3750
execute if score #HIT num_501 matches 0 if score #x num_501 matches 1250..2500 if score #z num_501 matches 3750..6250 if score #y num_501 matches 0..8125 run function #bullet_501:detailed/hit/planks/dark_oak
scoreboard players set #x max_501 8750
scoreboard players set #x min_501 7500
execute if score #HIT num_501 matches 0 if score #x num_501 matches 7500..8750 if score #z num_501 matches 3750..6250 if score #y num_501 matches 0..8125 run function #bullet_501:detailed/hit/planks/dark_oak


scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/grindstone/floor/south