#> pac_man_102:mobs/pacman/direction
### 方向の取得

#info
# as,at :player
# _Group_102=1 → @sとの同IDエンティティ

## 方向の設定
    # 向きを角度に反映
    execute store result entity @s Rotation[0] float 90 run scoreboard players get #player_102 _Input_102
    # 曲がる方向に柵がない時、方向を変更
    execute rotated as @s rotated ~ 0 unless block ^ ^ ^0.51 #pac_man_102:stage run scoreboard players operation @s _Direction_102 = #player_102 _Input_102
    execute rotated as @s rotated ~ 0 unless block ^ ^ ^0.51 #pac_man_102:stage align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

## 方向の反映
    execute if score @s _Direction_102 matches 1 on passengers if entity @s[tag=PacMan_body_102] run data merge entity @s {transformation:{left_rotation:{axis:[0f,1f,0f],angle:1.5708f}}}
    execute if score @s _Direction_102 matches 2 on passengers if entity @s[tag=PacMan_body_102] run data merge entity @s {transformation:{left_rotation:{axis:[0f,1f,0f],angle:0f}}}
    execute if score @s _Direction_102 matches 3 on passengers if entity @s[tag=PacMan_body_102] run data merge entity @s {transformation:{left_rotation:{axis:[0f,1f,0f],angle:4.7124f}}}
    execute if score @s _Direction_102 matches 4 on passengers if entity @s[tag=PacMan_body_102] run data merge entity @s {transformation:{left_rotation:{axis:[0f,1f,0f],angle:3.1415f}}}