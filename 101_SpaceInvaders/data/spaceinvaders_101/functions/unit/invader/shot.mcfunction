#> spaceinvaders_101:unit/invader/shot
### 敵機の弾召喚

#弾の召喚
execute at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run summon item_display ~ ~-1 ~ {Tags:[Entity_101,Bullet_101,BulletOfInvader_101,temp],item:{id:"minecraft:orange_concrete",Count:1b},Rotation:[0f,90f],transformation:[0.1f,0f,0f,0f, 0f,0.1f,0f,0f, 0f,0f,0.5f,0f, 0f,0f,0f,1f]}
playsound minecraft:block.note_block.snare voice @a ~ ~ ~ 2 0.3 1

#idの設定
scoreboard players operation @e[tag=temp,type=item_display] Id_101 = @s id_000
tag @e[tag=temp,type=item_display] remove temp