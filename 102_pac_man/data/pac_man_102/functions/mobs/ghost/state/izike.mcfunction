#> pac_man_102:mobs/ghost/state/izike
### イジケ状態

#info
# as,at: @e[tag=Ghost_base_102,type=item_display,scores={_State_102=3}]
# _Group_102=1 → @sとの同IDエンティティ

## 速度の設定
    # イジケ
    execute store result score @s _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[9]
    # ワープ
    execute if block ~ ~-2 ~ minecraft:white_concrete store result score @s _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[10]

## 移動方向決定
    # 向きを角度に反映
    execute store result entity @s Rotation[0] float 90 run scoreboard players get @s _Direction_102
    # 曲がり角
    execute rotated as @s rotated ~ 0 unless block ~ ~-2 ~ minecraft:gold_block if block ^ ^ ^0.51 #pac_man_102:stage run function pac_man_102:mobs/ghost/turn/corner
    # 交差点
        # 交差点に入ったことを検知
        execute if score @s _Operation_102 matches 0 rotated as @s rotated ~ 0 if block ^ ^-2 ^-0.49 minecraft:gold_block align xz positioned ~0.5 ~ ~0.5 run function pac_man_102:mobs/ghost/turn/izike
        # 地面が金ブロックかどうかを保存
        execute store success score @s _Operation_102 rotated as @s rotated ~ 0 if block ^ ^-2 ^-0.49 minecraft:gold_block

# モデル設定
    # 体
    execute if score #reversal_102 _Timer_102 matches 1..5 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:white_terracotta"
    execute if score #reversal_102 _Timer_102 matches 11..15 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:white_terracotta"
    execute if score #reversal_102 _Timer_102 matches 21..25 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:white_terracotta"
    execute if score #reversal_102 _Timer_102 matches 31..35 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:white_terracotta"
    execute if score #reversal_102 _Timer_102 matches 41..45 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:white_terracotta"

    execute if score #reversal_102 _Timer_102 matches 6..10 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:blue_terracotta"
    execute if score #reversal_102 _Timer_102 matches 16..20 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:blue_terracotta"
    execute if score #reversal_102 _Timer_102 matches 26..30 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:blue_terracotta"
    execute if score #reversal_102 _Timer_102 matches 36..40 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:blue_terracotta"
    execute if score #reversal_102 _Timer_102 matches 46.. on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.id set value "minecraft:blue_terracotta"

    # 目
    execute on passengers if entity @s[tag=Ghost_eye_102] unless data entity @s item{id:"minecraft:air"} run data modify entity @s item.id set value "minecraft:air"