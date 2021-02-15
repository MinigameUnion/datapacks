#内在処理
scoreboard players operation #IN num_501 = @s in_501
scoreboard players set @s in_501 0
#ブロック境目最短距離算出
execute store result score #X pos_501 run scoreboard players operation #x num_501 %= #1block num_501
execute store result score #Y pos_501 run scoreboard players operation #y num_501 %= #1block num_501
execute store result score #Z pos_501 run scoreboard players operation #z num_501 %= #1block num_501
scoreboard players operation #X pos_501 *= #BULLET x_vec_501
scoreboard players operation #Y pos_501 *= #BULLET y_vec_501
scoreboard players operation #Z pos_501 *= #BULLET z_vec_501
execute if score #BULLET x_vec_501 matches ..-1 if score #x num_501 matches ..-1 run scoreboard players operation #x num_501 *= #-1 num_000
execute if score #X pos_501 matches 0.. run scoreboard players operation #x num_501 -= #1block num_501
scoreboard players operation #x num_501 *= #-1 num_000
execute if score #BULLET y_vec_501 matches ..-1 if score #y num_501 matches ..-1 run scoreboard players operation #y num_501 *= #-1 num_000
execute if score #Y pos_501 matches 0.. run scoreboard players operation #y num_501 -= #1block num_501
scoreboard players operation #y num_501 *= #-1 num_000
execute if score #BULLET z_vec_501 matches ..-1 if score #z num_501 matches ..-1 run scoreboard players operation #z num_501 *= #-1 num_000
execute if score #Z pos_501 matches 0.. run scoreboard players operation #z num_501 -= #1block num_501
scoreboard players operation #z num_501 *= #-1 num_000
#切り上げ除算
scoreboard players operation #x num_501 += #BULLET-1 x_vec_501
scoreboard players operation #y num_501 += #BULLET-1 y_vec_501
scoreboard players operation #z num_501 += #BULLET-1 z_vec_501
scoreboard players operation #x num_501 /= #BULLET x_vec_501
scoreboard players operation #y num_501 /= #BULLET y_vec_501
scoreboard players operation #z num_501 /= #BULLET z_vec_501
#tellraw @a [{"text":"xyz:"},{"score":{"objective":"num_501","name":"#x"}},{"text":","},{"score":{"objective":"num_501","name":"#y"}},{"text":","},{"score":{"objective":"num_501","name":"#z"}}]
#ブロック越え最短ループ回数
scoreboard players operation #min num_501 = #x num_501
scoreboard players operation #min num_501 < #y num_501
scoreboard players operation #min num_501 < #z num_501
scoreboard players operation #min num_501 > #1 num_000
execute store result score #SKIP x_vec_501 store result score #SKIP y_vec_501 store result score #SKIP z_vec_501 run scoreboard players operation #min num_501 < #SPEED num_501
scoreboard players operation #SPEED num_501 -= #min num_501
#斜め抜け検知
function bullet_501:gap/check
#細かいブロックの当たり判定処理
execute if predicate bullet_501:detailed run function #bullet_501:detailed/block/root
#エンティティ当たり判定
execute align xyz if entity @e[type=#gun_501:target,tag=!team_501,tag=target_501,dx=0,dy=0,dz=0] positioned as @s run function #bullet_501:entity/root
#移動ベクトル取得
scoreboard players operation #SKIP x_vec_501 *= #BULLET x_vec_501
scoreboard players operation #SKIP y_vec_501 *= #BULLET y_vec_501
scoreboard players operation #SKIP z_vec_501 *= #BULLET z_vec_501
#斜め抜け防止
execute if score #gap num_501 matches 1.. run function bullet_501:gap/root
#座標加算,代入
execute store result entity @s Pos[0] double 0.0001 store result score #x num_501 run scoreboard players operation #x pos_501 += #SKIP x_vec_501
execute store result entity @s Pos[1] double 0.0001 store result score #y num_501 run scoreboard players operation #y pos_501 += #SKIP y_vec_501
execute store result entity @s Pos[2] double 0.0001 store result score #z num_501 run scoreboard players operation #z pos_501 += #SKIP z_vec_501
#ブロック判定
execute if score #HIT num_501 matches 0 positioned as @s unless block ~ ~ ~ #bullet_501:air run function #gun_501:hit_block
execute unless score @s in_501 matches 1.. positioned as @s run function bullet_501:in/air/skip
#execute if score @s in_501 matches 1 positioned as @s run function bullet_501:in/block/skip
execute if score @s in_501 matches 2 positioned as @s run function bullet_501:in/water/skip
execute if score #HIT num_501 matches 0 if predicate bullet_501:random/25 positioned as @s unless entity @a[tag=owner_501,distance=..3] run function bullet_501:particle
execute if entity @a[tag=owner_501,tag=debug_501] positioned as @s unless entity @a[tag=owner_501,distance=..2] run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[tag=owner_501]
#ループ処理
execute if score #SPEED num_501 matches 1.. if score #y pos_501 matches 0..2549999 positioned as @s run function bullet_501:skip