#> suiryu_taratara_401:active/trigger/rule_fever
#
# ルール説明
# FEVERについて
#
# @within function suiryu_taratara_401:active/trigger/check

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# FEVER
  tellraw @s [{ "text": "■ FEVER","color": "gold"}]
  tellraw @s [{ "text": "  タラを倒したらFEVERゲージが溜まっていきます。","color": "white"}]
  tellraw @s [{ "text": "  FEVERゲージが最大まで溜まったら、FEVERに突入します。","color": "white"}]
  tellraw @s [{ "text": "  FEVER中はタラ以外の魚は出現せず、","color": "white"}]
  tellraw @s [{ "text": "  タラを倒すたびにボーナスミニを獲得できます。","color": "white"}]

# 空白
  tellraw @s ""

# その他説明

  ## 概要
    tellraw @s [{"text": "<概要>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 5"}}]

  ## 武器について
    tellraw @s [{"text": "<武器について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 1"}}]

  ## ボーナスアイテムについて
    tellraw @s [{"text": "<ボーナスアイテムについて>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 2"}}]

  ## タラ以外の魚について
    tellraw @s [{"text": "<タラ以外の魚について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 3"}}]

  ## ボーナス効果について
    tellraw @s [{"text": "<ボーナス効果について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 6"}}]

# スコア初期化
  scoreboard players set @s suiryu_taratara_401.trigger 0

# トリガー有効化
  scoreboard players enable @s suiryu_taratara_401.trigger
