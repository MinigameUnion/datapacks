execute if score $spread spread_501 matches 1.. run function gun_501:spread/circle
execute if score $spread spread_501 matches ..0 run function gun_501:get_rotation
scoreboard players operation @s speed_501 = #SPEED num_501
scoreboard players operation @s damage_501 = #DAMAGE num_501
scoreboard players operation @s id_000 = #ID num_501
scoreboard players set @s gravity_501 0
tag @s remove setting_501

#tellraw @a [{"text":"VECTOR:["},{"score":{"objective":"x_vec_501","name":"@s"}},{"text":","},{"score":{"objective":"y_vec_501","name":"@s"}},{"text":","},{"score":{"objective":"z_vec_501","name":"@s"}},{"text":"]"}]