#> ms_801:tick
# 毎tick実行
# @internal

# 常時
## 初期化確認
execute if score $InitTimer General_801 matches 1.. run scoreboard players remove $InitTimer General_801 1

# ゲーム中
## タイマー
execute if score $GameInfo General_801 matches 2 run function ms_801:game/timer
