#execute positioned ~-0.95 ~-0.95 ~-0.95 as @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=0,dy=0,dz=0] positioned ~0.9 ~0.9 ~0.9 if entity @s[dx=0,dy=0,dz=0] positioned ~0.05 ~0.05 ~0.05 run function #gun_501:hit_entity
execute positioned ~-1 ~-1 ~-1 as @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 if entity @s[dx=0,dy=0,dz=0] run function #gun_501:hit_entity

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation #x num_501 += #BULLET x_vec_501
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation #y num_501 += #BULLET y_vec_501
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation #z num_501 += #BULLET z_vec_501

scoreboard players remove #SKIP num_501 1
execute if score #SKIP num_501 matches 1.. positioned as @s run function bullet_501:entity/finisher