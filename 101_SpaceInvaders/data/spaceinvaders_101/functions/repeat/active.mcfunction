#> spaceinvaders_101:repeat/active
## #ゲーム進行

## id同期
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101
    execute as @a[scores={playing_000=101}] store success score @s Group_101 if score @s id_000 = #_id Id_101

## 弾
    # 移動
    execute as @e[tag=Bullet_101,scores={Group_101=1}] at @s run function spaceinvaders_101:unit/bullet/move
    # 得点の加算
    scoreboard players operation @s Point_101 += #_point_add operation_101
    scoreboard players set #_point_add operation_101 0

## 自機
    # 移動
    tp @e[tag=Player_101,scores={Group_101=1}] ~ 62 -46 
    # 発射
    execute if score @s Shot_101 matches 1.. run function spaceinvaders_101:unit/player/shot
    # ダメージ演出
    execute if entity @e[tag=Player_damaged_101,scores={Group_101=1}] run function spaceinvaders_101:unit/player/damaged

## 敵
    # 敵用タイマー,発射処理
    execute if entity @s[scores={Timer_101=..0}] run function spaceinvaders_101:unit/invader/timer
    scoreboard players remove @s Timer_101 1
    # 移動
    function spaceinvaders_101:unit/invader/move
    # 発射
    execute if entity @s[scores={Timer_101=0,Direction_101=1}] if predicate spaceinvaders_101:invader/shot at @e[tag=Invader_101,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run function spaceinvaders_101:unit/invader/shot

## UFO
    # 移動
    execute store result score @s operation_101 if entity @e[tag=Invader_101,scores={Group_101=1}]
    execute if score @s operation_101 matches 8.. run scoreboard players remove @e[tag=UFO_101,scores={Group_101=1}] Timer_101 1
    execute if score @s operation_101 matches 8.. if entity @e[tag=UFO_101,scores={Group_101=1,Timer_101=0}] run function spaceinvaders_101:unit/ufo/set
    execute as @e[tag=UFO_101,scores={Group_101=1,Timer_101=..0}] at @s run function spaceinvaders_101:unit/ufo/move
    # 撃墜演出
    execute as @e[tag=UFO_beated_101,scores={Group_101=1}] at @s run function spaceinvaders_101:unit/ufo/beated

## ステージクリア
execute unless entity @e[tag=Invader_101,scores={Group_101=1}] run function spaceinvaders_101:game/clear

## ゲームオーバー
execute at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10 ~-1 -46.5 if entity @e[tag=Invader_101,scores={Group_101=1},dx=19,dy=1,dz=1] run function spaceinvaders_101:game/fail
execute if score @s HP_101 matches 0 run function spaceinvaders_101:game/fail

## 得点表示
title @s actionbar {"translate":"現在の得点:%s","bold":true,"with":[{"score":{"name":"@s","objective":"Point_101"}}]}
