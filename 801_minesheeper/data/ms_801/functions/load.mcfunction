#> ms_801:load
# load時処理
# @internal

# scoreboard追加
scoreboard objectives add General_801 dummy

# 初回のみ実行
execute unless score $GameInfo General_801 matches -2147483648..2147483647 run function ms_801:load_once
