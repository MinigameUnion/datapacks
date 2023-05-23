#> spaceinvaders_101:game/next
### ステージ移行

## id同期
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101

## スコアの設定
    scoreboard players add @s Stage_101 1
    scoreboard players set @s Progress_101 2
    scoreboard players set @s Shot_101 0
    scoreboard players set @s ShotCount_101 0
    scoreboard players set @s Timer_101 -1

## エンティティの処理
    kill @e[tag=Player_101,type=item_display,scores={Group_101=1}]
    kill @e[tag=Bullet_101,type=item_display,scores={Group_101=1}]

## 体力の表示
    execute if score @s HP_101 matches 3 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 991 65 -64 995 65 -64 ~-2 ~-1 ~-6
    execute if score @s HP_101 matches 2 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 991 65 -65 995 65 -65 ~-2 ~-1 ~-6
    execute if score @s HP_101 matches 1 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 991 65 -66 995 65 -66 ~-2 ~-1 ~-6

## ステージ数のタイトル設定
    execute if score @s Stage_101 matches 0..9 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -60 994 74 -60 990 71 -50
    execute if score @s Stage_101 matches 10..19 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -51 994 74 -51 990 71 -50
    execute if score @s Stage_101 matches 20..29 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -52 994 74 -52 990 71 -50
    execute if score @s Stage_101 matches 30..39 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -53 994 74 -53 990 71 -50
    execute if score @s Stage_101 matches 40..49 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -54 994 74 -54 990 71 -50
    execute if score @s Stage_101 matches 50..59 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -55 994 74 -55 990 71 -50
    execute if score @s Stage_101 matches 60..69 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -56 994 74 -56 990 71 -50
    execute if score @s Stage_101 matches 70..79 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -57 994 74 -57 990 71 -50
    execute if score @s Stage_101 matches 80..89 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -58 994 74 -58 990 71 -50
    execute if score @s Stage_101 matches 90..99 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -59 994 74 -59 990 71 -50

    scoreboard players operation #_temp operation_101 = @s Stage_101
    scoreboard players operation #_temp operation_101 %= #_const_10 operation_101

    execute if score #_temp operation_101 matches 0 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -60 994 74 -60 994 71 -50
    execute if score #_temp operation_101 matches 1 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -51 994 74 -51 994 71 -50
    execute if score #_temp operation_101 matches 2 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -52 994 74 -52 994 71 -50
    execute if score #_temp operation_101 matches 3 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -53 994 74 -53 994 71 -50
    execute if score #_temp operation_101 matches 4 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -54 994 74 -54 994 71 -50
    execute if score #_temp operation_101 matches 5 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -55 994 74 -55 994 71 -50
    execute if score #_temp operation_101 matches 6 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -56 994 74 -56 994 71 -50
    execute if score #_temp operation_101 matches 7 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -57 994 74 -57 994 71 -50
    execute if score #_temp operation_101 matches 8 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -58 994 74 -58 994 71 -50
    execute if score #_temp operation_101 matches 9 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 71 -59 994 74 -59 994 71 -50