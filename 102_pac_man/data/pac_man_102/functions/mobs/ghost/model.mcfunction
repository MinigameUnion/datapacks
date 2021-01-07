#モデルアニメーション

#info
# as,at: @e[tag=Ghost_base_102]
# _Group_102=1 → @sとの同IDエンティティ

#胴体アニメーション
scoreboard players add @s _Model_102 1
data modify entity @s[scores={_Model_102=1}] ArmorItems[3].tag.CustomModelData set value 1001
data modify entity @s[scores={_Model_102=3}] ArmorItems[3].tag.CustomModelData set value 1002
scoreboard players set @s[scores={_Model_102=4..}] _Model_102 0

#目に方向を反映
execute if score @s _Direction_102 matches 1 run data modify entity @e[tag=Ghost_eye_102,limit=1,scores={_Group_102=1}] ArmorItems[3].tag.CustomModelData set value 1004
execute if score @s _Direction_102 matches 2 run data modify entity @e[tag=Ghost_eye_102,limit=1,scores={_Group_102=1}] ArmorItems[3].tag.CustomModelData set value 1002
execute if score @s _Direction_102 matches 3 run data modify entity @e[tag=Ghost_eye_102,limit=1,scores={_Group_102=1}] ArmorItems[3].tag.CustomModelData set value 1003
execute if score @s _Direction_102 matches 4 run data modify entity @e[tag=Ghost_eye_102,limit=1,scores={_Group_102=1}] ArmorItems[3].tag.CustomModelData set value 1001