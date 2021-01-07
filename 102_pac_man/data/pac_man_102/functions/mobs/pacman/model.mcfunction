#モデルアニメーション

#info
# as,at:@e[tag=PacMan_102]

#モデル設定
execute unless data entity @s ArmorItems[3].id run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1001}}]}

#モデルアニメーション
scoreboard players add @s _Model_102 1
data modify entity @s[scores={_Model_102=1}] ArmorItems[3].tag.CustomModelData set value 1001
data modify entity @s[scores={_Model_102=2}] ArmorItems[3].tag.CustomModelData set value 1002
data modify entity @s[scores={_Model_102=3}] ArmorItems[3].tag.CustomModelData set value 1003
data modify entity @s[scores={_Model_102=4}] ArmorItems[3].tag.CustomModelData set value 1002
scoreboard players set @s[scores={_Model_102=4}] _Model_102 0