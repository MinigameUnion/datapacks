#パックマン 設置

#info
# as,at: free

#既存のモブ削除
kill @e[tag=PacMan_102]
#設置
summon minecraft:armor_stand 991.5 92 1001.0 {Tags:[Entity_102,PacMan_102,PacMan_base_102],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1002}}],Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},Passengers:[{id:"minecraft:armor_stand",Tags:[Entity_102,PacMan_102,Rot_102,PacMan_rot_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[180.0f,0.0f]}]}

#スコアの設定
scoreboard players set @e[tag=PacMan_102] _Id_102 10
scoreboard players set @e[tag=PacMan_base_102] _Direction_102 2
scoreboard players set @e[tag=PacMan_base_102] _Timer_102 0
scoreboard players set @e[tag=PacMan_base_102] _Model_102 3