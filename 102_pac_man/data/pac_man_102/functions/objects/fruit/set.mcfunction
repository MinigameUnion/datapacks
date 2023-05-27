#フルーツの設置

#info
# as,at: free

#フルーツの召喚
kill @e[tag=Fruit_102,type=item_display]
summon item_display 997.5 92 1001.0 {Tags:[Entity_102,Fruit_102],Rotation:[180.0f,0.0f],item:{id:"minecraft:melon",Count:1b,tag:{CustomModelData:1001}}}

#フルーツの情報の設定
data modify entity @e[tag=Fruit_102,type=item_display,limit=1] item.tag.CustomModelData set from storage pac_man_102 Patterns[0].Fruit[0]
scoreboard players set @e[tag=Fruit_102,type=item_display] _Timer_102 200