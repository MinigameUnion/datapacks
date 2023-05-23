#> suiryu_taratara_401:game/start/count_down/3
#
# カウントダウン
# 3
#
# @within function suiryu_taratara_401:game/start

# タイトルリセット
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] reset

# タイトル時間設定
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] times 5 5 5

# タイトル
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] title {"text":"3","color":"gold"}

# サウンド
  execute as @a[predicate=suiryu_taratara_401:location/stage_and_audience] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

# 1s後にカウントダウン2
  schedule function suiryu_taratara_401:game/start/count_down/2 1s
