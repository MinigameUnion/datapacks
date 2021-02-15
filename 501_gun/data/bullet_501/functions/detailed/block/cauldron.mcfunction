execute if score #x num_501 matches 0..1250 if score #y num_501 matches 1875..10000 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #z num_501 matches 0..1250 if score #y num_501 matches 1875..10000 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #x num_501 matches 8750..10000 if score #y num_501 matches 1875..10000 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #z num_501 matches 8750..10000 if score #y num_501 matches 1875..10000 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 1875..2500 run function #bullet_501:detailed/hit/metal

execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #x num_501 matches 0..1250 if score #z num_501 matches 0..2500 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #x num_501 matches 0..1250 if score #z num_501 matches 7500..10000 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #x num_501 matches 8750..10000 if score #z num_501 matches 0..2500 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #x num_501 matches 8750..10000 if score #z num_501 matches 7500..10000 run function #bullet_501:detailed/hit/metal

execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #z num_501 matches 0..1250 if score #x num_501 matches 0..2500 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #z num_501 matches 0..1250 if score #x num_501 matches 7500..10000 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #z num_501 matches 8750..10000 if score #x num_501 matches 0..2500 run function #bullet_501:detailed/hit/metal
execute if score #HIT num_501 matches 0 if score #y num_501 matches 0..1875 if score #z num_501 matches 8750..10000 if score #x num_501 matches 7500..10000 run function #bullet_501:detailed/hit/metal

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/cauldron