scoreboard players set #HIT num_501 0
scoreboard players operation #DAMAGE num_501 = @s damage_501
scoreboard players operation #SPEED num_501 = @s speed_501
scoreboard players operation #BULLET id_000 = @s id_000
scoreboard players operation #BULLET team_id_501 = @s team_id_501
scoreboard players operation #PARTICLE num_501 = @s min_501

execute store result score #BULLET y_vec_501 run scoreboard players operation @s gravity_501 -= #GRAVITY ope_501
scoreboard players operation #BULLET y_vec_501 /= #SPEED num_501
execute store result score #SCALE num_501 run scoreboard players operation #BULLET x_vec_501 = @s x_vec_501
execute store result score #SCALE y_vec_501 run scoreboard players operation #BULLET y_vec_501 += @s y_vec_501
execute store result score #SCALE z_vec_501 run scoreboard players operation #BULLET z_vec_501 = @s z_vec_501

execute if score #SCALE num_501 matches ..-1 run scoreboard players operation #SCALE num_501 *= #-1 num_501
execute if score #SCALE y_vec_501 matches ..-1 run scoreboard players operation #SCALE y_vec_501 *= #-1 num_501
execute if score #SCALE z_vec_501 matches ..-1 run scoreboard players operation #SCALE z_vec_501 *= #-1 num_501
scoreboard players operation #SCALE num_501 > #SCALE y_vec_501
scoreboard players operation #SCALE num_501 > #SCALE z_vec_501
scoreboard players operation #SCALE num_501 /= #UNIT num_501
execute if score #SCALE num_501 matches 2.. run function bullet_501:rescale

scoreboard players operation #BULLET-1 x_vec_501 = #BULLET x_vec_501
scoreboard players operation #BULLET-1 y_vec_501 = #BULLET y_vec_501
scoreboard players operation #BULLET-1 z_vec_501 = #BULLET z_vec_501
execute if score #BULLET x_vec_501 matches 1.. run scoreboard players remove #BULLET-1 x_vec_501 1
execute if score #BULLET y_vec_501 matches 1.. run scoreboard players remove #BULLET-1 y_vec_501 1
execute if score #BULLET z_vec_501 matches 1.. run scoreboard players remove #BULLET-1 z_vec_501 1
execute if score #BULLET x_vec_501 matches ..-1 run scoreboard players add #BULLET-1 x_vec_501 1
execute if score #BULLET y_vec_501 matches ..-1 run scoreboard players add #BULLET-1 y_vec_501 1
execute if score #BULLET z_vec_501 matches ..-1 run scoreboard players add #BULLET-1 z_vec_501 1

execute store result score #LOOP x_vec_501 store result score #LOOP y_vec_501 run scoreboard players operation #LOOP z_vec_501 = #LOOP num_501
scoreboard players operation #LOOP x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #LOOP y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #LOOP z_vec_501 *= #BULLET z_vec_501
execute store result score #DETAILED x_vec_501 store result score #DETAILED y_vec_501 run scoreboard players operation #DETAILED z_vec_501 = #DETAILED num_501
scoreboard players operation #DETAILED x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #DETAILED y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #DETAILED z_vec_501 *= #BULLET z_vec_501

execute store result score #x num_501 store result score #x pos_501 run data get entity @s Pos[0] 10000
execute store result score #y num_501 store result score #y pos_501 run data get entity @s Pos[1] 10000
execute store result score #z num_501 store result score #z pos_501 run data get entity @s Pos[2] 10000

execute as @a if score @s id_000 = #BULLET id_000 run tag @s add owner_501
tag @a[tag=owner_501] add team_501
#execute as @a if score @s team_id_501 = #BULLET team_id_501 run tag @s add team_501

#execute store result score #BREAKABLE num_501 run gamerule mobGriefing
execute store success score #BREAKABLE num_501 if entity @a[tag=owner_501,tag=breakable_501,limit=1]

execute if score #SPEED num_501 matches 1.. if score #y pos_501 matches 0..2549999 positioned as @s run function bullet_501:skip

execute positioned as @s store result score #BULLET num_501 unless block ~ 0 ~ minecraft:torch
execute unless score #y pos_501 matches 0..2549999 run scoreboard players set #BULLET num_501 0
execute if score #BULLET num_501 matches 0 run kill @s
execute if score #HIT num_501 matches 1.. run kill @s
#execute if score #HIT num_501 matches 0 positioned as @s run particle minecraft:dust 0 0 0 0.1 ~ ~ ~ 0 0 0 0 1 force @a
#execute if score #HIT num_501 matches 0 positioned as @s run particle bubble ~ ~ ~ 0 0 0 0 1 force @a

tag @a remove owner_501
tag @a remove team_501