#> ms_801:tick
# 毎tick実行
# @internal

# ゲーム中
## タイマー
execute if score $GameInfo General_801 matches 2 run function ms_801:timer
