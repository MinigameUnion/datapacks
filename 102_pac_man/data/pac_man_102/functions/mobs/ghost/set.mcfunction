#ゴーストの設置

#info
# as,at: free

#既存のモブ削除
kill @e[tag=Ghost_102]

#アカベエ
    #召喚
    summon minecraft:item_display 1003.5 92 1001.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Blinky_102,Blinky_base_102],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Blinky_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,2.2f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1002}}},{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_body_102,Blinky_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:red_concrete",Count:1b,tag:{CustomModelData:1001}}}]}
    summon minecraft:marker 1019 92 1011 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Blinky_102,Blinky_dest_102]}
    #スコアの設定
    scoreboard players set @e[tag=Blinky_base_102] _State_102 2
    scoreboard players set @e[tag=Blinky_base_102] _Direction_102 2

#ピンキー
    #召喚
    summon minecraft:item_display 1000.5 92 1001.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Pinky_102,Pinky_base_102],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Pinky_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,2.2f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1003}}},{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_body_102,Pinky_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:pink_concrete",Count:1b,tag:{CustomModelData:1001}}}]}
    summon minecraft:marker 1019 92 990 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Pinky_102,Pinky_dest_102]}
    #スコアの設定
    scoreboard players set @e[tag=Pinky_base_102] _State_102 1
    scoreboard players set @e[tag=Pinky_base_102] _Direction_102 3

#アオスケ
    #召喚
    summon minecraft:item_display 1000.5 92 999.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Inky_102,Inky_base_102],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Inky_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,2.2f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1004}}},{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_body_102,Inky_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:cyan_concrete",Count:1b,tag:{CustomModelData:1001}}}]}
    summon minecraft:marker 979 92 1011 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Inky_102,Inky_dest_102]}
    #スコアの設定
    scoreboard players set @e[tag=Inky_base_102] _State_102 0
    scoreboard players set @e[tag=Inky_base_102] _Direction_102 1
    execute store result score @e[tag=Inky_base_102] _Timer_102 run data get storage pac_man_102 Patterns[0].NoEatTime[0]
    execute store result score @e[tag=Inky_base_102] _Count_102 run data get storage pac_man_102 Patterns[0].Release[0]

#グズタ
    #召喚
    summon minecraft:item_display 1000.5 92 1003.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Clyde_102,Clyde_base_102],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Clyde_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,2.2f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1004}}},{id:"minecraft:item_display",Tags:[Entity_102,Ghost_102,Ghost_body_102,Clyde_102],Rotation:[0.0f,0.0f],transformation:[1.5f,0f,0f,0f, 0f,1.5f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1.5f],item:{id:"minecraft:orange_concrete",Count:1b,tag:{CustomModelData:1001}}}]}
    summon minecraft:marker 979 92 990 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Clyde_102,Clyde_dest_102]}
    #スコアの設定
    scoreboard players set @e[tag=Clyde_base_102] _State_102 0
    scoreboard players set @e[tag=Clyde_base_102] _Direction_102 1
    execute store result score @e[tag=Clyde_base_102] _Timer_102 run data get storage pac_man_102 Patterns[0].NoEatTime[1]
    execute store result score @e[tag=Clyde_base_102] _Count_102 run data get storage pac_man_102 Patterns[0].Release[1]
    