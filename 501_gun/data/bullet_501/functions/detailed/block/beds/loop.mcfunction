
scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #y max_501 5625
scoreboard players set #y min_501 1875
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
execute if score #y num_501 matches 1875..5625 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 5625
scoreboard players set #y min_501 0

scoreboard players set #x max_501 1875
scoreboard players set #x min_501 0
scoreboard players set #z max_501 1875
scoreboard players set #z min_501 0
execute if score #0 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 0..1875 if score #z num_501 matches 0..1875 if score #y num_501 matches 0..5625 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 10000
scoreboard players set #x min_501 8125
scoreboard players set #z max_501 1875
scoreboard players set #z min_501 0
execute if score #1 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 8125..10000 if score #z num_501 matches 0..1875 if score #y num_501 matches 0..5625 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 1875
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 8125
execute if score #2 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 0..1875 if score #z num_501 matches 8125..10000 if score #y num_501 matches 0..5625 run function #bullet_501:detailed/hit

scoreboard players set #x max_501 10000
scoreboard players set #x min_501 8125
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 8125
execute if score #3 property_501 matches 1 if score #HIT num_501 matches 0 if score #x num_501 matches 8125..10000 if score #z num_501 matches 8125..10000 if score #y num_501 matches 0..5625 run function #bullet_501:detailed/hit


scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/beds/loop