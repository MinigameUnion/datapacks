#> suiryu_taratara_401:active/tick
#
# 誰かプレイ中
# 常時実行
#
# @within function suiryu_taratara_401:tick

# プレイヤーから実行
  execute as @a[scores={playing_000=401}] at @s run function suiryu_taratara_401:active/player_tick
