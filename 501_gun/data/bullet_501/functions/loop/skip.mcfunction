#ブロック境目最短距離算出
execute store result score #X pos_501 store result score #X num_501 run scoreboard players operation #x num_501 %= #100000 num_000
execute store result score #Y pos_501 store result score #Y num_501 run scoreboard players operation #y num_501 %= #100000 num_000
execute store result score #Z pos_501 store result score #Z num_501 run scoreboard players operation #z num_501 %= #100000 num_000
scoreboard players operation #X pos_501 *= #BULLET x_vec_501
scoreboard players operation #Y pos_501 *= #BULLET y_vec_501
scoreboard players operation #Z pos_501 *= #BULLET z_vec_501
execute unless score #X pos_501 matches ..-1 if score #X num_501 matches ..-1 run scoreboard players operation #x num_501 *= #-1 num_000
execute unless score #X pos_501 matches ..-1 run scoreboard players operation #x num_501 -= #100000 num_000
execute store result score #X num_501 run scoreboard players operation #x num_501 *= #-1 num_000
execute unless score #Y pos_501 matches ..-1 if score #Y num_501 matches ..-1 run scoreboard players operation #y num_501 *= #-1 num_000
execute unless score #Y pos_501 matches ..-1 run scoreboard players operation #y num_501 -= #100000 num_000
execute store result score #Y num_501 run scoreboard players operation #y num_501 *= #-1 num_000
execute unless score #Z pos_501 matches ..-1 if score #Z num_501 matches ..-1 run scoreboard players operation #z num_501 *= #-1 num_000
execute unless score #Z pos_501 matches ..-1 run scoreboard players operation #z num_501 -= #100000 num_000
execute store result score #Z num_501 run scoreboard players operation #z num_501 *= #-1 num_000
#切り上げ除算
scoreboard players operation #x num_501 /= #BULLET x_vec_501
scoreboard players operation #y num_501 /= #BULLET y_vec_501
scoreboard players operation #z num_501 /= #BULLET z_vec_501
scoreboard players operation #X num_501 %= #BULLET x_vec_501
scoreboard players operation #Y num_501 %= #BULLET y_vec_501
scoreboard players operation #Z num_501 %= #BULLET z_vec_501
execute unless score #X num_501 matches 0 run scoreboard players add #x num_501 1
execute unless score #Y num_501 matches 0 run scoreboard players add #y num_501 1
execute unless score #Z num_501 matches 0 run scoreboard players add #z num_501 1
#tellraw @a [{"text":"xyz:"},{"score":{"objective":"num_501","name":"#x"}},{"text":","},{"score":{"objective":"num_501","name":"#y"}},{"text":","},{"score":{"objective":"num_501","name":"#z"}}]
#ブロック越え最短ループ回数
scoreboard players operation #x num_501 < #y num_501
scoreboard players operation #x num_501 < #z num_501
scoreboard players operation #x num_501 > #1 num_000
scoreboard players operation #SPEED num_501 -= #x num_501
execute if score #SPEED num_501 matches ..-1 run scoreboard players operation #x num_501 += #SPEED num_501
execute store result score #SKIP x_vec_501 store result score #SKIP y_vec_501 store result score #SKIP z_vec_501 run scoreboard players get #x num_501
#座標加算,代入
scoreboard players operation #SKIP x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #SKIP y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #SKIP z_vec_501 *= #BULLET z_vec_501
execute store result entity @s Pos[0] double 0.00001 store result score #x num_501 run scoreboard players operation #x pos_501 += #SKIP x_vec_501
execute store result entity @s Pos[1] double 0.00001 store result score #y num_501 run scoreboard players operation #y pos_501 += #SKIP y_vec_501
execute store result entity @s Pos[2] double 0.00001 store result score #z num_501 run scoreboard players operation #z pos_501 += #SKIP z_vec_501
#ヒット判定
function #gun_501:hit_block