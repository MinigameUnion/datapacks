#> suiryu_taratara_401:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# 誰かプレイ中に実行
  execute if entity @a[scores={playing_000=401}] run function suiryu_taratara_401:active/tick
