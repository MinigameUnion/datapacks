#> suiryu_taratara_401:rule
#
# ルール説明
# 看板右クリックで実行
#
# @within function suiryu_taratara_401:active/trigger/check

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# 概要
  tellraw @s [{ "text": "■ 概要","color": "gold"}]
  tellraw @s [{ "text": "  空からタラが降ってきます。","color": "white"}]
  tellraw @s [{ "text": "  タラを倒したらスコアが増えます。","color": "white"}]
  tellraw @s [{ "text": "  タラを倒したらタラが増えます。","color": "white"}]
  tellraw @s [{ "text": "  タラが窒息等で全滅してしまったらゲーム終了です。","color": "white"}]

# 空白
  tellraw @s ""

# その他説明

  ## 武器について
    tellraw @s [{"text": "<武器について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 1"}}]

  ## ボーナスアイテムについて
    tellraw @s [{"text": "<ボーナスアイテムについて>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 2"}}]

  ## タラ以外の魚について
    tellraw @s [{"text": "<タラ以外の魚について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 3"}}]

  ## FEVERについて
    tellraw @s [{"text": "<FEVERについて>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 4"}}]

  ## ボーナス効果について
    tellraw @s [{"text": "<ボーナス効果について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 6"}}]

# スコア初期化
  scoreboard players set @s suiryu_taratara_401.trigger 0

# トリガー有効化
  scoreboard players enable @s suiryu_taratara_401.trigger
