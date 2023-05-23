#> suiryu_taratara_401:handler/load_playdata
#
# 引継ぎ機構
# プレイデータ読み込み
#
# @within tag/function minecraft:handler/000_load_playdata

# 最高スコア読み込み
  execute store result score #BestRecord suiryu_taratara_401.trigger run data get storage temp_000:loading game.401.BestRecord

# 最高スコア保持者読み込み
  data modify storage suiryu_taratara_401 BestRecordPlayer set from storage temp_000:loading game.401.BestRecordPlayer

# 看板更新

  ## forceload add
    forceload add 4000 -5

  ## 最高スコア更新
    data modify block 4000 51 -5 Text4 set value '{"score":{"name":"#BestRecord","objective":"suiryu_taratara_401.trigger"},"color":"gold","bold":true}'

  ## 最高スコア保持者名記録
    data modify block 4000 51 -5 Text3 set value '{"nbt":"BestRecordPlayer","storage":"suiryu_taratara_401","color":"aqua","bold":true}'

  ## forceload remove
    forceload remove 4000 -5
