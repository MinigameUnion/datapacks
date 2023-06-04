#パックマン 設置

#info
# as,at: free

#既存のモブ削除
kill @e[tag=PacMan_102,type=item_display]
#設置
summon minecraft:item_display 991.5 92 1001.0 {Tags:[Entity_102,PacMan_102,PacMan_base_102],Passengers:[{id:"minecraft:item_display",Tags:[Entity_102,PacMan_102,PacMan_body_102],item:{id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1002}},Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,1.2f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f]}]}

#スコアの設定
scoreboard players set @e[tag=PacMan_base_102,type=item_display] _Direction_102 2
scoreboard players set @e[tag=PacMan_base_102,type=item_display] _Timer_102 0
scoreboard players set @e[tag=PacMan_base_102,type=item_display] _Model_102 3