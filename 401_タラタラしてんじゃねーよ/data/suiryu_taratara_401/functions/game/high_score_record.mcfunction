#> suiryu_taratara_401:game/high_score_record
#
# ハイスコア記録
#
# @within function suiryu_taratara_401:game/game_over

# forceload add
  forceload add 4000 -5

# ハイスコア記録
  data modify block 4000 51 -5 Text4 set value '{"score":{"name":"#Score","objective":"suiryu_taratara_401.trigger"},"color":"gold","bold":true}'

# プレイヤー名記録

  ## プレイヤーヘッド取得
    loot replace block 3990 49 14 container.0 loot player_000:head

  ## プレイヤー名記録
    data modify storage suiryu_taratara_401 BestRecordPlayer set from block 3990 49 14 Items[{Slot:0b}].tag.SkullOwner.Name
    data modify block 4000 51 -5 Text3 set value '{"nbt":"BestRecordPlayer","storage":"suiryu_taratara_401","color":"aqua","bold":true}'

# 看板設置
  setblock 4000 51 -5 oak_wall_sign[facing=south]{Text1: '{"text":"最高スコア","color":"green","bold":true}', Text2: '{"text":"==========","color":"green","bold":true}', Text3: '{"selector":"@s","color":"aqua","bold":true}', Text4: '{"score":{"name":"#Score","objective":"suiryu_taratara_401.trigger"},"color":"gold","bold":true}'} replace

# ハイスコア更新
  scoreboard players operation #BestRecord suiryu_taratara_401.trigger = #Score suiryu_taratara_401.trigger

# forceload remove
  forceload remove 4000 -5
