#> ms_801:setting/end
# 設定フェーズ終了(=ゲーム開始)
# @internal

# 設定用羊kill
tp @e[tag=Setting_801] 8000 -100 0
kill @e[tag=Setting_801]

# 演出
tellraw @a[scores={playing_000=801}] {"text":"MineSheeperを開始します..."}
playsound entity.player.levelup master @a[scores={playing_000=801}] 8000.0 15 0.0 1 0.7 1

# 開始予約
schedule function ms_801:game/start 1s append
