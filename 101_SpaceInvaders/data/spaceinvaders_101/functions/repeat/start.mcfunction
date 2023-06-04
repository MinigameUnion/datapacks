#> spaceinvaders_101:repeat/start
###
###ゲーム入室演出
###

## タイマー進行
    scoreboard players add @s[scores={Timer_101=-1..20}] Timer_101 1

## id同期
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101

## 自機
    #設置
    execute if score @s Timer_101 matches 19 run function spaceinvaders_101:unit/player/set
    #移動
    tp @e[tag=Player_101,type=item_display,scores={Group_101=1}] ~ 64 -46
    #発射
    execute if score @s Shot_101 matches 1.. run function spaceinvaders_101:unit/player/shot

## 弾
    #移動
    execute as @e[tag=Bullet_101,type=item_display,scores={Group_101=1}] at @s run function spaceinvaders_101:unit/bullet/move

## 選択
    #赤
    execute at @e[tag=BulletOfPlayer_101,type=item_display,scores={Group_101=1}] if block ~ ~0.3 ~ minecraft:red_concrete at @s run function spaceinvaders_101:game/next
    #青
    execute at @e[tag=BulletOfPlayer_101,type=item_display,scores={Group_101=1}] if block ~ ~0.3 ~ minecraft:blue_concrete at @s run function spaceinvaders_101:game/reset

## 演出
    # タイトル演出
    execute if score @s Timer_101 matches 0.. run title @s actionbar {"translate":"人参付きの棒を右クリックで弾を発射します %sを撃つと%s %sを撃つと%sます","color":"white","with":[{"text":"赤の四角","color":"red"},{"text":"開始","color":"red"},{"text":"青の四角","color":"blue"},{"text":"戻り","color":"blue"}]}
    execute if score @s Timer_101 matches 0 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 983 62 -48 983 85 -48 ~-10 62 -46
    execute if score @s Timer_101 matches 1 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 984 62 -48 984 85 -48 ~-9 62 -46
    execute if score @s Timer_101 matches 2 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 985 62 -48 985 85 -48 ~-8 62 -46
    execute if score @s Timer_101 matches 3 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 986 62 -48 986 85 -48 ~-7 62 -46
    execute if score @s Timer_101 matches 4 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 987 62 -48 987 85 -48 ~-6 62 -46
    execute if score @s Timer_101 matches 5 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 988 62 -48 988 85 -48 ~-5 62 -46
    execute if score @s Timer_101 matches 6 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 989 62 -48 989 85 -48 ~-4 62 -46
    execute if score @s Timer_101 matches 7 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 990 62 -48 990 85 -48 ~-3 62 -46
    execute if score @s Timer_101 matches 8 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 991 62 -48 991 85 -48 ~-2 62 -46
    execute if score @s Timer_101 matches 9 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 992 62 -48 992 85 -48 ~-1 62 -46
    execute if score @s Timer_101 matches 10 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 993 62 -48 993 85 -48 ~0 62 -46
    execute if score @s Timer_101 matches 11 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 994 62 -48 994 85 -48 ~1 62 -46
    execute if score @s Timer_101 matches 12 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 995 62 -48 995 85 -48 ~2 62 -46
    execute if score @s Timer_101 matches 13 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 996 62 -48 996 85 -48 ~3 62 -46
    execute if score @s Timer_101 matches 14 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 997 62 -48 997 85 -48 ~4 62 -46
    execute if score @s Timer_101 matches 15 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 998 62 -48 998 85 -48 ~5 62 -46
    execute if score @s Timer_101 matches 16 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 999 62 -48 999 85 -48 ~6 62 -46
    execute if score @s Timer_101 matches 17 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 1000 62 -48 1000 85 -48 ~7 62 -46
    execute if score @s Timer_101 matches 18 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 1001 62 -48 1001 85 -48 ~8 62 -46
    execute if score @s Timer_101 matches 19 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 1002 62 -48 1002 85 -48 ~9 62 -46
    execute if score @s Timer_101 matches 20 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone 1003 62 -48 1003 85 -48 ~10 62 -46

    # サウンド演出
    execute if score @s Timer_101 matches 0 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 0.2
    execute if score @s Timer_101 matches 0 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 0.7
    execute if score @s Timer_101 matches 1 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1.2
    execute if score @s Timer_101 matches 8 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 0.5
    execute if score @s Timer_101 matches 8 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1.0
    execute if score @s Timer_101 matches 9 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1.3
    execute if score @s Timer_101 matches 16 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 0.4
    execute if score @s Timer_101 matches 16 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 0.9
    execute if score @s Timer_101 matches 17 run playsound minecraft:block.note_block.bit voice @s ~ ~ ~ 2 1.2
    execute if score @s Timer_101 matches 20 run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 1 1.6