#execute positioned ~-0.95 ~-0.95 ~-0.95 as @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=0,dy=0,dz=0] positioned ~0.9 ~0.9 ~0.9 if entity @s[dx=0,dy=0,dz=0] positioned ~0.05 ~0.05 ~0.05 run function #gun_501:hit_entity
execute positioned ~-1 ~-1 ~-1 as @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 if entity @s[dx=0,dy=0,dz=0] run function #gun_501:hit_entity

execute store result entity @s Pos[0] double 0.00001 store result score #x num_501 run scoreboard players operation #x pos_501 += #LOOP x_vec_501
execute store result entity @s Pos[1] double 0.00001 store result score #y num_501 run scoreboard players operation #y pos_501 += #LOOP y_vec_501
execute store result entity @s Pos[2] double 0.00001 store result score #z num_501 run scoreboard players operation #z pos_501 += #LOOP z_vec_501

execute positioned as @s if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break
execute positioned as @s unless block ~ ~ ~ #bullet_501:air run function bullet_501:loop/block

scoreboard players operation #SPEED num_501 -= #LOOP num_501
execute if score #SPEED num_501 matches 1.. if score #SPEED num_501 < #LOOP num_501 if score #y pos_501 matches 0..25499999 positioned as @s positioned ~-1 ~-1 ~-1 if entity @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function bullet_501:loop/finisher
execute if score #SPEED num_501 matches 1.. if score #SPEED num_501 >= #LOOP num_501 if score #y pos_501 matches 0..25499999 positioned as @s positioned ~-1 ~-1 ~-1 if entity @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function bullet_501:loop