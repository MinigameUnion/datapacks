###
###弾の移動
###

## 弾削除
    kill @s[tag=hitted_101]
    tag @s[tag=hitted_101] remove Bullet_101
    tag @s[tag=hitted_101] remove BulletOfPlayer_101
    tag @s[tag=hitted_101] remove BulletOfInvader_101

## 移動
    tp @s ^ ^ ^0.8

## ヒット判定
    #敵機
    execute if entity @s[tag=BulletOfPlayer_101] as @e[tag=Invader_101,type=item_display,distance=..1.5,scores={Group_101=1}] positioned ~-0.4 ~-0.6 ~-0.4 if entity @s[dx=0,dy=0.2,dz=0] positioned ~-0.2 ~0 ~-0.2 if entity @s[dx=0,dy=0.2,dz=0] run tag @s add inRange_101
    execute if entity @s[tag=BulletOfPlayer_101] as @e[tag=inRange_101,type=item_display,limit=1,sort=nearest,scores={Group_101=1}] run function spaceinvaders_101:unit/invader/hit
    tag @e[tag=inRange_101,type=item_display,scores={Group_101=1}] remove inRange_101
    #UFO
    execute if entity @s[tag=BulletOfPlayer_101] as @e[tag=UFO_101,type=item_display,distance=..1.5,scores={Group_101=1}] if entity @s[tag=Moving_101] run function spaceinvaders_101:unit/ufo/hit
    #自機
    execute if entity @s[tag=BulletOfInvader_101] positioned ~-0.25 ~-0.5 ~-0.25 if entity @e[tag=Player_101,type=item_display,dx=0,dy=0,dz=0,scores={Group_101=1}] positioned ~-0.5 ~0 ~-0.5 if entity @e[tag=Player_101,type=item_display,dx=0,dy=0,dz=0,scores={Group_101=1}] run function spaceinvaders_101:unit/player/hit
    #トーチカ
    execute if entity @s[tag=Bullet_101] if block ~ ~ ~ #spaceinvaders_101:torchka run function spaceinvaders_101:unit/torchka/hit
    #壁
    execute if entity @s[tag=Bullet_101] if block ~ ~ ~ #spaceinvaders_101:collision run tag @s add hitted_101