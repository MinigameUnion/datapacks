#> suiryu_taratara_401:active/trigger/rule_salmon
#
# ルール説明
# タラ以外の魚について
#
# @within function suiryu_taratara_401:active/trigger/check

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# タラ以外の魚
  tellraw @s [{ "text": "■ タラ以外の魚","color": "gold"}]
  tellraw @s [{ "text": "  スコアが増えるにつれ、タラ以外の魚が出現します。","color": "white"}]

# 空白
  tellraw @s ""

# サケ
  tellraw @s [{ "text": "  〇サケ","color": "white"}]
  tellraw @s [{ "text": "    スコアが減少します。","color": "white"}]

# 空白
  tellraw @s ""

# 熱帯魚
  tellraw @s [{ "text": "  〇熱帯魚","color": "white"}]
  tellraw @s [{ "text": "    スコアが大きく減少します。","color": "white"}]

# 空白
  tellraw @s ""

# フグ
  tellraw @s [{ "text": "  〇フグ","color": "white"}]
  tellraw @s [{ "text": "    スコアがかなり大きく減少します。","color": "white"}]

# 空白
  tellraw @s ""

# その他説明

  ## 概要
    tellraw @s [{"text": "<概要>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 5"}}]

  ## 武器について
    tellraw @s [{"text": "<武器について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 1"}}]

  ## ボーナスアイテムについて
    tellraw @s [{"text": "<ボーナスアイテムについて>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 2"}}]

  ## FEVERについて
    tellraw @s [{"text": "<FEVERについて>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 4"}}]

  ## ボーナス効果について
    tellraw @s [{"text": "<ボーナス効果について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 6"}}]

# スコア初期化
  scoreboard players set @s suiryu_taratara_401.trigger 0

# トリガー有効化
  scoreboard players enable @s suiryu_taratara_401.trigger
