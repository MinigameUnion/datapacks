#> pac_man_102:mobs/ghost/state/active
### 通常状態

#info
# as,at: @e[tag=Ghost_base_102,type=item_display,scores={_State_102=2}]
# _Group_102=1 → @sとの同IDエンティティ

## 速度の設定
    # 通常時
    execute store result score @s _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[6]
    # スパート1
    execute if score #spurt_102 _State_102 matches 1 store result score @s _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[7]
    # スパート2
    execute if score #spurt_102 _State_102 matches 2 store result score @s _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[8]
    # ワープ
    execute if block ~ ~-2 ~ minecraft:white_concrete store result score @s _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[10]

## 移動方向決定
    # 向きを角度に反映
    execute store result entity @s Rotation[0] float 90 run scoreboard players get @s _Direction_102
    # 曲がり角
    execute rotated as @s rotated ~ 0 unless block ~ ~-2 ~ minecraft:gold_block if block ^ ^ ^0.51 #pac_man_102:stage run function pac_man_102:mobs/ghost/turn/corner
    # 交差点
        # 交差点に入ったことを検知
        execute if score @s _Operation_102 matches 0 rotated as @s rotated ~ 0 if block ^ ^-2 ^-0.49 minecraft:gold_block align xz positioned ~0.5 ~ ~0.5 run function pac_man_102:mobs/ghost/turn/branch
        # 地面が金ブロックかどうかを保存
        execute store success score @s _Operation_102 rotated as @s rotated ~ 0 if block ^ ^-2 ^-0.49 minecraft:gold_block

## モデル設定
    #体
    execute if entity @s[tag=Blinky_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:red_concrete"} run data modify entity @s item.id set value "red_concrete"
    execute if entity @s[tag=Pinky_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:pink_concrete"} run data modify entity @s item.id set value "pink_concrete"
    execute if entity @s[tag=Inky_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:cyan_concrete"} run data modify entity @s item.id set value "cyan_concrete"
    execute if entity @s[tag=Clyde_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:orange_concrete"} run data modify entity @s item.id set value "orange_concrete"
    # 目
    execute on passengers if entity @s[tag=Ghost_eye_102] unless data entity @s item{id:"minecraft:stone_button"} run data modify entity @s item.id set value "stone_button"