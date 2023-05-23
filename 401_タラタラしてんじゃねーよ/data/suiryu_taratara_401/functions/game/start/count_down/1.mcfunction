#> suiryu_taratara_401:game/start/count_down/1
#
# カウントダウン
# 1
#
# @within function suiryu_taratara_401:game/start/count_down/2

# タイトル
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] title {"text":"1","color":"gold"}

# サウンド
  execute as @a[predicate=suiryu_taratara_401:location/stage_and_audience] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

# 1s後にカウントダウン0
  schedule function suiryu_taratara_401:game/start/count_down/0 1s
