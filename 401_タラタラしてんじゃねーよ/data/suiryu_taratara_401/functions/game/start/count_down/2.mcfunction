#> suiryu_taratara_401:game/start/count_down/2
#
# カウントダウン
# 2
#
# @within function suiryu_taratara_401:game/start/count_down/3

# タイトル
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] title {"text":"2","color":"gold"}

# サウンド
  execute as @a[predicate=suiryu_taratara_401:location/stage_and_audience] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

# 1s後にカウントダウン1
  schedule function suiryu_taratara_401:game/start/count_down/1 1s
