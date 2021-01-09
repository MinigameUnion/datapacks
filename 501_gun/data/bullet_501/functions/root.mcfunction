scoreboard players set #HIT num_501 0
scoreboard players operation #BULLET x_vec_501 = @s x_vec_501
scoreboard players operation #BULLET y_vec_501 = @s y_vec_501
scoreboard players operation #BULLET z_vec_501 = @s z_vec_501
execute store result score #LOOP x_vec_501 store result score #LOOP y_vec_501 run scoreboard players operation #LOOP z_vec_501 = #LOOP num_501
scoreboard players operation #LOOP x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #LOOP y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #LOOP z_vec_501 *= #BULLET z_vec_501
execute store result score #DETAILED x_vec_501 store result score #DETAILED y_vec_501 run scoreboard players operation #DETAILED z_vec_501 = #DETAILED num_501
scoreboard players operation #DETAILED x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #DETAILED y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #DETAILED z_vec_501 *= #BULLET z_vec_501

scoreboard players operation #DAMAGE num_501 = @s damage_501
scoreboard players operation #SPEED num_501 = @s speed_501
scoreboard players operation #BULLET id_000 = @s id_000
scoreboard players operation #BULLET team_id_501 = @s team_id_501

scoreboard players operation @s gravity_501 += #GRAVITY num_501
scoreboard players operation @s gravity_501 *= #GRAVITY ope_501
scoreboard players operation @s gravity_501 /= #100 num_000
scoreboard players operation @s y_vec_501 -= @s gravity_501

execute store result score #x num_501 store result score #x pos_501 run data get entity @s Pos[0] 100000
execute store result score #y num_501 store result score #y pos_501 run data get entity @s Pos[1] 100000
execute store result score #z num_501 store result score #z pos_501 run data get entity @s Pos[2] 100000

execute as @a if score @s id_000 = #BULLET id_000 run tag @s add owner_501
tag @a[tag=owner_501] add team_501
#execute as @a if score @s team_id_501 = #BULLET team_id_501 run tag @s add team_501

#execute positioned ~-1 ~-1 ~-1 if entity @e[type=#gun_501:target,dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function bullet_501:loop
execute positioned ~-0.95 ~-0.95 ~-0.95 as @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=0,dy=0,dz=0] positioned ~0.9 ~0.9 ~0.9 if entity @s[dx=0,dy=0,dz=0] positioned ~0.05 ~0.05 ~0.05 run function bullet_501:loop
execute if score #SPEED num_501 matches 1.. if score #y pos_501 matches 0..25499999 positioned as @s run function bullet_501:skip

execute positioned as @s store success score #BULLET num_501 unless block ~ 0 ~ minecraft:torch
execute unless score #y pos_501 matches 0..25499999 run scoreboard players set #BULLET num_501 0
execute if score #BULLET num_501 matches 0 run kill @s
execute if score #HIT num_501 matches 1.. run kill @s
execute if score #HIT num_501 matches 0 positioned as @s run particle underwater ~ ~ ~ 0 0 0 0 1 force @a
#execute if score #HIT num_501 matches 0 positioned as @s run particle minecraft:dust 0 0 0 0.1 ~ ~ ~ 0 0 0 0 1 force @a
#execute if score #HIT num_501 matches 0 positioned as @s run particle bubble ~ ~ ~ 0 0 0 0 1 force @a

tag @a remove owner_501
tag @a remove team_501