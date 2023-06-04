#> suiryu_taratara_401:active/player_tick
#
# プレイ中のプレイヤーから常時実行
#
# @within function suiryu_taratara_401:active/tick

# トリガー
  execute if score @s suiryu_taratara_401.trigger matches 1.. run function suiryu_taratara_401:active/trigger/check

# 無敵化
  effect give @s resistance 1 4 true
