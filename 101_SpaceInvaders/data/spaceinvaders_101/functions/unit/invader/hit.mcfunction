#> spaceinvaders_101:unit/invader/hit
### インベーダー被弾

## 体力
    #減少
    scoreboard players remove @s HP_101 1
    #演出
    execute if entity @s[tag=Zombie_101,scores={HP_101=1..}] run playsound minecraft:entity.zombie.hurt voice @a ~ ~ ~ 2 1
    execute if entity @s[tag=Skeleton_101,scores={HP_101=1..}] run playsound minecraft:entity.skeleton.hurt voice @a ~ ~ ~ 2 1
    execute if entity @s[tag=Creeper_101,scores={HP_101=1..}] run playsound minecraft:entity.creeper.hurt voice @a ~ ~ ~ 2 1
    execute if entity @s[scores={HP_101=1..}] at @s run particle dust 1 0 0 1.5 ~ ~ ~ 0 0 0 1 1 force

## キル時判定
    #ポイント
    execute if entity @s[tag=Zombie_101,scores={HP_101=0}] run scoreboard players add #_point_add operation_101 10
    execute if entity @s[tag=Skeleton_101,scores={HP_101=0}] run scoreboard players add #_point_add operation_101 20
    execute if entity @s[tag=Creeper_101,scores={HP_101=0}] run scoreboard players add #_point_add operation_101 30
    #演出
    execute if entity @s[tag=Zombie_101,scores={HP_101=0}] run playsound minecraft:entity.zombie.death voice @a ~ ~ ~ 2 1
    execute if entity @s[tag=Skeleton_101,scores={HP_101=0}] run playsound minecraft:entity.skeleton.death voice @a ~ ~ ~ 2 1
    execute if entity @s[tag=Creeper_101,scores={HP_101=0}] run playsound minecraft:entity.creeper.death voice @a ~ ~ ~ 2 1
    execute if entity @s[scores={HP_101=0}] at @s run particle dust 1 1 1 1.5 ~ ~ ~ 0 0 0 1 1 force
    #消滅
    execute if entity @s[scores={HP_101=0}] run kill @s

## 弾の処理
    tag @e[tag=BulletOfPlayer_101,type=item_display,scores={Group_101=1}] add hitted_101

## ヒットストップ処理
    scoreboard players add @a[scores={Group_101=1,playing_000=101}] Timer_101 2
