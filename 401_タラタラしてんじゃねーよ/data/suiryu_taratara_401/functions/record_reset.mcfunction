#> suiryu_taratara_401:record_reset
#
# 記録をリセットする
#
# @within function suiryu_taratara_401:join

# forceload add
  forceload add 4000 -5

# 看板リセット
  data remove block 4000 51 -5 Text3
  data remove block 4000 51 -5 Text4

# ハイスコアリセット
  scoreboard players set #BestRecord suiryu_taratara_401.trigger 0

# 最高スコア保持者リセット
  data remove storage suiryu_taratara_401 BestRecordPlayer

# forceload remove
  forceload remove 4000 -5
