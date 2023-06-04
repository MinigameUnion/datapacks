#> ms_801:leave_last
# 全員退出時に実行
# 負荷軽減/不具合修正用の処理
# @internal

# ゲームを初期状態に
scoreboard players set $GameInfo General_801 0

# エンティティを全てkill
tp @e[tag=801] 8000 -100 0
kill @e[tag=801]
