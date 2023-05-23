###
###弾召喚
###

## id紐づけ
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101

## 画面上に弾がいないとき弾を召喚
    execute unless entity @e[tag=BulletOfPlayer_101,scores={Group_101=1}] if entity @e[tag=Player_101,type=item_display,scores={Group_101=1}] run playsound minecraft:block.note_block.snare voice @a ~ ~ ~ 2 1
    execute unless entity @e[tag=BulletOfPlayer_101,scores={Group_101=1}] at @e[tag=Player_101,type=item_display,scores={Group_101=1}] run summon item_display ~ ~1.5 ~ {Tags:[Entity_101,Bullet_101,BulletOfPlayer_101,temp],item:{id:"minecraft:white_concrete",Count:1b},Rotation:[0f,-90f],transformation:[0.1f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.5f,0f, 0f,0f,0f,1f]}
    #idの設定
    scoreboard players operation @e[tag=temp,type=item_display] Id_101 = @s id_000
    tag @e[tag=temp,type=item_display] remove temp

## スコアの処理
    scoreboard players set @s Shot_101 0