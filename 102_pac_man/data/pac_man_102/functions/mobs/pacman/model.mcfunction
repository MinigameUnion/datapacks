#モデルアニメーション

#info
# as,at:@e[tag=PacMan_102,type=item_display]

#モデル設定
    execute on passengers unless data entity @s item{id:"minecraft:yellow_concrete"} run data merge entity @s {item:{id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1001}}}

#モデルアニメーション
    scoreboard players add @s _Model_102 1
    execute if score @s _Model_102 matches 1 on passengers run data modify entity @s item.tag.CustomModelData set value 1001
    execute if score @s _Model_102 matches 2 on passengers run data modify entity @s item.tag.CustomModelData set value 1002
    execute if score @s _Model_102 matches 3 on passengers run data modify entity @s item.tag.CustomModelData set value 1003
    execute if score @s _Model_102 matches 4 on passengers run data modify entity @s item.tag.CustomModelData set value 1002
    scoreboard players set @s[scores={_Model_102=4}] _Model_102 0