#> pac_man_102:mobs/ghost/model
### モデルアニメーション

#info
# as,at: @e[tag=Ghost_base_102,type=item_display]
# _Group_102=1 → @sとの同IDエンティティ

## 胴体アニメーション
    scoreboard players add @s _Model_102 1
    execute if score @s _Model_102 matches 1 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.tag.CustomModelData set value 1001
    execute if score @s _Model_102 matches 3 on passengers if entity @s[tag=Ghost_body_102] run data modify entity @s item.tag.CustomModelData set value 1002
    scoreboard players set @s[scores={_Model_102=4..}] _Model_102 0

## 目に方向を反映
    execute if score @s _Direction_102 matches 1 on passengers if entity @s[tag=Ghost_eye_102] run data modify entity @s item.tag.CustomModelData set value 1004
    execute if score @s _Direction_102 matches 2 on passengers if entity @s[tag=Ghost_eye_102] run data modify entity @s item.tag.CustomModelData set value 1002
    execute if score @s _Direction_102 matches 3 on passengers if entity @s[tag=Ghost_eye_102] run data modify entity @s item.tag.CustomModelData set value 1003
    execute if score @s _Direction_102 matches 4 on passengers if entity @s[tag=Ghost_eye_102] run data modify entity @s item.tag.CustomModelData set value 1001