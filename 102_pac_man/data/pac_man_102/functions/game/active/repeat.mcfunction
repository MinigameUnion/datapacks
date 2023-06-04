#> pac_man_102:game/active/repeat
### ゲーム中 常時実行

#info
# as,at:player[scores={playing_000=102,_Game_102=20..29}]
# repeat

## プレイヤー
    # 方向入力取得
    execute positioned 997.0 115.0 1001.0 unless entity @s[distance=..0.001] run function pac_man_102:mobs/player/input
    # 位置固定
    function pac_man_102:mobs/player/pos

## パックマン
    # 常時実行
    execute as @e[tag=PacMan_base_102,type=item_display] at @s run function pac_man_102:mobs/pacman/repeat

## ゴースト
    # 性格
        # アカベイ
        execute if score #attack_pattern_102 _State_102 matches 2 run function pac_man_102:mobs/ghost/dest
    # 常時実行
    execute as @e[tag=Ghost_base_102,type=item_display] at @s run function pac_man_102:mobs/ghost/repeat
    # サウンド
    execute if score #stop_102 _Timer_102 matches 0 run function pac_man_102:mobs/ghost/sound/repeat

## フルーツターゲットの設置
    execute if score #pellet_102 _Count_102 matches 174 run function pac_man_102:objects/fruit/set
    execute if score #pellet_102 _Count_102 matches 74 run function pac_man_102:objects/fruit/set
    scoreboard players remove @e[tag=Fruit_102,type=item_display] _Timer_102 1
    kill @e[tag=Fruit_102,type=item_display,scores={_Timer_102=..0}]

## スパート
    # スパート条件検知
    execute if score #spurt_102 _State_102 matches 1..2 if score #spurt_1_102 _Count_102 >= #pellet_102 _Count_102 run scoreboard players set #spurt_102 _State_102 1
    execute if score #spurt_102 _State_102 matches 2 if score #spurt_2_102 _Count_102 >= #pellet_102 _Count_102 run scoreboard players set #spurt_102 _State_102 2

## 波状攻撃パターンの切り替え
    # タイマー進行
    execute unless score #reversal_102 _Timer_102 matches 1.. if score #attack_pattern_102 _Timer_102 matches 1.. run scoreboard players remove #attack_pattern_102 _Timer_102 1
    # モード切り替え
    execute if score #attack_pattern_102 _Timer_102 matches 0 run function pac_man_102:mobs/ghost/attack_pattern

## 逆転中のタイマー進行
    # ゴーストを戻す
    execute if score #reversal_102 _Timer_102 matches 1 run scoreboard players set @e[tag=Ghost_base_102,type=item_display,scores={_State_102=3}] _State_102 2
    # タイマー進行
    execute if score #stop_102 _Timer_102 matches 0 if score #reversal_102 _Timer_102 matches 1.. run scoreboard players remove #reversal_102 _Timer_102 1

## パワーエサの点滅
    # タイマー加算
    scoreboard players add #power_pellet_102 _Timer_102 1
    execute if score #power_pellet_102 _Timer_102 matches 9.. run scoreboard players set #power_pellet_102 _Timer_102 1
    # 点滅
    execute if score #power_pellet_102 _Timer_102 matches 1..3 as @e[tag=PowerPellet_102,type=item_display] run data modify entity @s transformation.scale set value [0f,0f,0f]
    execute if score #power_pellet_102 _Timer_102 matches 4..8 as @e[tag=PowerPellet_102,type=item_display] run data modify entity @s transformation.scale set value [1.5f,1.5f,1.5f]

## タイマー
    # ヒットストップタイマー進行
    execute if score #stop_102 _Timer_102 matches 1.. run scoreboard players remove #stop_102 _Timer_102 1
    # 点数表示ディスプレイの削除
    scoreboard players add @e[tag=Point_Display_102,type=text_display] _Timer_102 1
    kill @e[tag=Point_Display_102,type=text_display,scores={_Timer_102=50..}]

## 残機増加
    execute if score #health_add_102 _Timer_102 matches 31 if score @s _Point_102 matches 10000.. run scoreboard players set #health_add_102 _Timer_102 30
    execute if score #health_add_102 _Timer_102 matches 1..30 run function pac_man_102:mobs/pacman/health_add

## 得点更新
    execute as @e[tag=Point_102,type=text_display,limit=1] run data modify entity @s text set value '{"translate":"               \\n%s","bold":true,"with":[{"score":{"name":"@a[tag=Playing_102,limit=1]","objective":"_Point_102"}}]}'

## ステージクリア判定
    execute if score #pellet_102 _Count_102 matches ..0 run function pac_man_102:game/inactive/stage_clear/init

## パックマンやられ判定
    execute at @e[tag=PacMan_base_102,type=item_display] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Ghost_base_102,type=item_display,dx=0,dy=-0.5,dz=0,scores={_State_102=2}] run function pac_man_102:game/inactive/pacman_death/init