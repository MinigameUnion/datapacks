scoreboard players set #SKIP num_501 1
scoreboard players set #BASE num_501 1

execute store result score #X max_501 store result score #X num_501 run scoreboard players operation #x num_501 = #detailed x_vec_501
execute store result score #Y max_501 store result score #Y num_501 run scoreboard players operation #y num_501 = #detailed y_vec_501
execute store result score #Z max_501 store result score #Z num_501 run scoreboard players operation #z num_501 = #detailed z_vec_501
scoreboard players operation #x num_501 %= #1block num_501
scoreboard players operation #y num_501 %= #1block num_501
scoreboard players operation #z num_501 %= #1block num_501
execute store result score #X min_501 run scoreboard players operation #X max_501 -= #x num_501
execute store result score #Y min_501 run scoreboard players operation #Y max_501 -= #y num_501
execute store result score #Z min_501 run scoreboard players operation #Z max_501 -= #z num_501

#tellraw @a [{"text":"#x,y,z : "},{"score":{"name":"#detailed","objective":"x_vec_501"}},{"text":" , "},{"score":{"name":"#detailed","objective":"y_vec_501"}},{"text":" , "},{"score":{"name":"#detailed","objective":"z_vec_501"}}]