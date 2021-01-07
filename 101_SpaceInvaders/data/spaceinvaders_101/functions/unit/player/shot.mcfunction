###
###弾召喚
###

##id紐づけ
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##画面上に弾がいないとき弾を召喚
execute unless entity @e[tag=BulletOfPlayer_101,scores={Group_101=1}] if entity @e[tag=Player_101,scores={Group_101=1}] run playsound minecraft:block.note_block.snare voice @a ~ ~ ~ 2 1
execute unless entity @e[tag=BulletOfPlayer_101,scores={Group_101=1}] at @e[tag=Player_101,scores={Group_101=1}] run summon armor_stand ~ ~1.5 ~ {Tags:[Entity_101,Bullet_101,BulletOfPlayer_101,temp],ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],Invisible:1b,NoGravity:1b,Small:1b,Rotation:[0.0f,-90.0f]}
#idの設定
scoreboard players operation @e[tag=temp] Id_101 = @s id_000
tag @e[tag=temp] remove temp

##スコアの処理
scoreboard players set @s Shot_101 0