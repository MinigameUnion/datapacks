#> spaceinvaders_101:scoreboard
### スコアボード関連の設定

## 得点
scoreboard objectives add Point_101 dummy

## 獲得コイン
scoreboard objectives add Coin_101 dummy

## ステージ進行
scoreboard objectives add Progress_101 dummy

## ステージレベル
scoreboard objectives add Stage_101 dummy

## タイマー
scoreboard objectives add Timer_101 dummy

## 体力
scoreboard objectives add HP_101 dummy

## 銃
    #発射用
    scoreboard objectives add Shot_101 minecraft.used:minecraft.carrot_on_a_stick
    #回数記録用
    scoreboard objectives add ShotCount_101 minecraft.used:minecraft.carrot_on_a_stick

## 内部ID
    scoreboard objectives add id_000 dummy
    scoreboard objectives add Id_101 dummy

## 同期用スコアボード
    scoreboard objectives add Group_101 dummy

## 演算用
    scoreboard objectives add operation_101 dummy
    scoreboard players set #_const_8 operation_101 8
    scoreboard players set #_const_10 operation_101 10
    scoreboard players set #_const_15 operation_101 15

## インベーダー用
    scoreboard objectives add Count_101 dummy
    scoreboard objectives add Direction_101 dummy
    scoreboard objectives add Move_101 dummy