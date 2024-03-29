# positioned 進む前の座標 ~
execute if entity @a[tag=owner_501,tag=debug_501] unless entity @a[tag=owner_501,distance=..2] run particle block_marker barrier ~ ~ ~ 0 0 0 0 1 force @a[tag=owner_501]

scoreboard players operation #X pos_501 = #x pos_501
scoreboard players operation #Y pos_501 = #y pos_501
scoreboard players operation #Z pos_501 = #z pos_501
execute store result score #X ope_501 run scoreboard players operation #X pos_501 += #SKIP x_vec_501
execute store result score #Y ope_501 run scoreboard players operation #Y pos_501 += #SKIP y_vec_501
execute store result score #Z ope_501 run scoreboard players operation #Z pos_501 += #SKIP z_vec_501
execute store result score #x ope_501 run scoreboard players operation #X pos_501 -= #BULLET x_vec_501
execute store result score #y ope_501 run scoreboard players operation #Y pos_501 -= #BULLET y_vec_501
execute store result score #z ope_501 run scoreboard players operation #Z pos_501 -= #BULLET z_vec_501
# #A ope = 進んだ後の座標 , #A pos = #a ope = 1つ前の座標

scoreboard players operation #X pos_501 /= #1block num_501
scoreboard players operation #Y pos_501 /= #1block num_501
scoreboard players operation #Z pos_501 /= #1block num_501
scoreboard players operation #X ope_501 /= #1block num_501
scoreboard players operation #Y ope_501 /= #1block num_501
scoreboard players operation #Z ope_501 /= #1block num_501
scoreboard players operation #X ope_501 -= #X pos_501
scoreboard players operation #Y ope_501 -= #Y pos_501
scoreboard players operation #Z ope_501 -= #Z pos_501
# #A ope = 移動分ブロック座標差分 , #a ope = 1つ前の座標 , #A pos 一つ前の座標の整数部分

#tellraw @a [{"text":"#X,Y,Z : "},{"score":{"name":"#X","objective":"ope_501"}},{"text":" , "},{"score":{"name":"#Y","objective":"ope_501"}},{"text":" , "},{"score":{"name":"#Z","objective":"ope_501"}}]
#tellraw @a [{"text":"#x,y,z : "},{"score":{"name":"#test","objective":"x_vec_501"}},{"text":" , "},{"score":{"name":"#test","objective":"y_vec_501"}},{"text":" , "},{"score":{"name":"#test","objective":"z_vec_501"}}]
#tellraw @a [{"text":"↓"}]
#tellraw @a [{"text":"#x,y,z : "},{"score":{"name":"#x","objective":"ope_501"}},{"text":" , "},{"score":{"name":"#y","objective":"ope_501"}},{"text":" , "},{"score":{"name":"#z","objective":"ope_501"}}]

execute if score #X ope_501 matches 1.. positioned ~1 ~ ~ run function #bullet_501:gap/x
execute if score #X ope_501 matches ..-1 positioned ~-1 ~ ~ run function #bullet_501:gap/x
execute if score #HIT num_501 matches 0 if score #Y ope_501 matches 1.. positioned ~ ~1 ~ run function #bullet_501:gap/y
execute if score #HIT num_501 matches 0 if score #Y ope_501 matches ..-1 positioned ~ ~-1 ~ run function #bullet_501:gap/y
execute if score #HIT num_501 matches 0 if score #Z ope_501 matches 1.. positioned ~ ~ ~1 run function #bullet_501:gap/z
execute if score #HIT num_501 matches 0 if score #Z ope_501 matches ..-1 positioned ~ ~ ~-1 run function #bullet_501:gap/z

#execute if score #HIT num_501 matches 1 run tellraw @a [{"text":"#x,y,z : "},{"score":{"name":"#x","objective":"ope_501"}},{"text":" , "},{"score":{"name":"#y","objective":"ope_501"}},{"text":" , "},{"score":{"name":"#z","objective":"ope_501"}}]