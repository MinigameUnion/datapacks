#ゴーストの設置

#info
# as,at: free

#既存のモブ削除
kill @e[tag=Ghost_102]

#アカベエ
    #召喚
    summon minecraft:armor_stand 1003.5 92 1001.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Blinky_102,Blinky_base_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{id:"minecraft:red_concrete",Count:1b,tag:{CustomModelData:1001}},{},{},{id:"minecraft:red_concrete",Count:1b,tag:{CustomModelData:1001}}],Passengers:[{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Blinky_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1002}}]},{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Blinky_102,Rot_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f]}]}
    summon minecraft:armor_stand 1019 92 1011 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Blinky_102,Blinky_dest_102],Invisible:1b,NoGravity:1b,Invulnerable:1b}
    #スコアの設定
    scoreboard players set @e[tag=Blinky_102] _Id_102 21
    scoreboard players set @e[tag=Blinky_base_102] _State_102 2
    scoreboard players set @e[tag=Blinky_base_102] _Direction_102 2

#ピンキー
    #召喚
    summon minecraft:armor_stand 1000.5 92 1001.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Pinky_102,Pinky_base_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{id:"minecraft:pink_concrete",Count:1b,tag:{CustomModelData:1001}},{},{},{id:"minecraft:pink_concrete",Count:1b,tag:{CustomModelData:1001}}],Passengers:[{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Pinky_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1003}}]},{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Pinky_102,Rot_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f]}]}
    summon minecraft:armor_stand 1019 92 990 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Pinky_102,Pinky_dest_102],Invisible:1b,NoGravity:1b,Invulnerable:1b}
    #スコアの設定
    scoreboard players set @e[tag=Pinky_102] _Id_102 22
    scoreboard players set @e[tag=Pinky_base_102] _State_102 1
    scoreboard players set @e[tag=Pinky_base_102] _Direction_102 3

#アオスケ
    #召喚
    summon minecraft:armor_stand 1000.5 92 999.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Inky_102,Inky_base_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{id:"minecraft:cyan_concrete",Count:1b,tag:{CustomModelData:1001}},{},{},{id:"minecraft:cyan_concrete",Count:1b,tag:{CustomModelData:1001}}],Passengers:[{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Inky_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1004}}]},{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Inky_102,Rot_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f]}]}
    summon minecraft:armor_stand 979 92 1011 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Inky_102,Inky_dest_102],Invisible:1b,NoGravity:1b,Invulnerable:1b}
    #スコアの設定
    scoreboard players set @e[tag=Inky_102] _Id_102 23
    scoreboard players set @e[tag=Inky_base_102] _State_102 0
    scoreboard players set @e[tag=Inky_base_102] _Direction_102 1
    execute store result score @e[tag=Inky_base_102] _Timer_102 run data get storage pac_man_102 Patterns[0].NoEatTime[0]
    execute store result score @e[tag=Inky_base_102] _Count_102 run data get storage pac_man_102 Patterns[0].Release[0]
    

#グズタ
    #召喚
    summon minecraft:armor_stand 1000.5 92 1003.0 {Tags:[Entity_102,Ghost_102,Ghost_base_102,Clyde_102,Clyde_base_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{id:"minecraft:orange_concrete",Count:1b,tag:{CustomModelData:1001}},{},{},{id:"minecraft:orange_concrete",Count:1b,tag:{CustomModelData:1001}}],Passengers:[{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Ghost_eye_102,Clyde_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1004}}]},{id:"minecraft:armor_stand",Tags:[Entity_102,Ghost_102,Clyde_102,Rot_102],Invisible:1b,NoGravity:1b,Marker:1b,Rotation:[0.0f,0.0f]}]}
    summon minecraft:armor_stand 979 92 990 {Tags:[Entity_102,Ghost_102,Ghost_dest_102,Clyde_102,Clyde_dest_102],Invisible:1b,NoGravity:1b,Invulnerable:1b}
    #スコアの設定
    scoreboard players set @e[tag=Clyde_102] _Id_102 24
    scoreboard players set @e[tag=Clyde_base_102] _State_102 0
    scoreboard players set @e[tag=Clyde_base_102] _Direction_102 1
    execute store result score @e[tag=Clyde_base_102] _Timer_102 run data get storage pac_man_102 Patterns[0].NoEatTime[1]
    execute store result score @e[tag=Clyde_base_102] _Count_102 run data get storage pac_man_102 Patterns[0].Release[1]
    