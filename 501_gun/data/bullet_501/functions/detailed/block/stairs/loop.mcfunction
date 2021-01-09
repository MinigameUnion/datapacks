scoreboard players set #x max_501 100000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 100000
scoreboard players set #z min_501 0
execute if score #half property_501 matches 1 if score #y num_501 matches 50000..100000 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/stairs/top
execute if score #half property_501 matches 2 if score #y num_501 matches 0..49999 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/stairs/bottom

execute if score #0 property_501 matches 1 if score #x num_501 matches 0..49999 if score #z num_501 matches 0..49999 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/stairs/0
execute if score #1 property_501 matches 1 if score #x num_501 matches 50000..100000 if score #z num_501 matches 0..49999 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/stairs/1
execute if score #2 property_501 matches 1 if score #x num_501 matches 0..49999 if score #z num_501 matches 50000..100000 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/stairs/2
execute if score #3 property_501 matches 1 if score #x num_501 matches 50000..100000 if score #z num_501 matches 50000..100000 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/stairs/3

scoreboard players operation #x num_501 += #DETAILED x_vec_501
scoreboard players operation #y num_501 += #DETAILED y_vec_501
scoreboard players operation #z num_501 += #DETAILED z_vec_501
scoreboard players operation #SKIP num_501 -= #DETAILED num_501
execute if score #SKIP num_501 >= #DETAILED num_501 run function bullet_501:detailed/block/stairs/loop