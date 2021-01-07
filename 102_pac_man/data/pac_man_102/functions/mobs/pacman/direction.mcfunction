#方向の取得

#info
# as,at :player
# _Group_102=1 → @sとの同IDエンティティ

#方向の設定
    #向きを角度に反映
    execute store result entity @e[tag=Rot_102,scores={_Group_102=1},limit=1] Rotation[0] float 90 run scoreboard players get #player_102 _Input_102
    #曲がる方向に柵がない時、方向を変更
    execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] rotated ~ 0 unless block ^ ^ ^0.51 #pac_man_102:stage run scoreboard players operation @s _Direction_102 = #player_102 _Input_102
    execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] rotated ~ 0 unless block ^ ^ ^0.51 #pac_man_102:stage align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

#方向の反映
data merge entity @s[scores={_Direction_102=1}] {Pose:{Head:[0.0f,90.0f,0.0f]}}
data merge entity @s[scores={_Direction_102=2}] {Pose:{Head:[0.0f,180.0f,0.0f]}}
data merge entity @s[scores={_Direction_102=3}] {Pose:{Head:[0.0f,270.0f,0.0f]}}
data merge entity @s[scores={_Direction_102=4}] {Pose:{Head:[0.0f,0.0f,0.0f]}}