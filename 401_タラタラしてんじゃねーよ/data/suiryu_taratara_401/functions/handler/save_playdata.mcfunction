#> suiryu_taratara_401:handler/save_playdata
#
# 引継ぎ機構
# プレイデータ保存
#
# @within tag/function minecraft:handler/000_save_playdata

# 最高スコア保存
  execute store result storage temp_000:playdata game.401.BestRecord int 1 run scoreboard players get #BestRecord suiryu_taratara_401.trigger

# 最高スコア保持者保存
  data modify storage temp_000:playdata game.401.BestRecordPlayer set from storage suiryu_taratara_401 BestRecordPlayer
