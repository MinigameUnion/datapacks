#フルーツの設置

#info
# as,at: free

#フルーツの召喚
kill @e[tag=Fruit_102]
summon armor_stand 997.5 92 1001.0 {Tags:[Entity_102,Fruit_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:melon",Count:1b,tag:{CustomModelData:1001}}]}

#フルーツの情報の設定
data modify entity @e[tag=Fruit_102,limit=1] ArmorItems[3].tag.CustomModelData set from storage pac_man_102 Patterns[0].Fruit[0]
scoreboard players set @e[tag=Fruit_102] _Timer_102 200