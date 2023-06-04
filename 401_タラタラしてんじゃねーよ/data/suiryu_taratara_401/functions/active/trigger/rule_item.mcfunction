#> suiryu_taratara_401:rule_item
#
# ルール説明
# ボーナスアイテムについて
#
# @within function suiryu_taratara_401:active/trigger/check

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# ボーナスアイテム
  tellraw @s [{ "text": "■ ボーナスアイテム","color": "gold"}]
  tellraw @s [{ "text": "  プレイ中にアイテムが落ちている場合があります。","color": "white"}]

# 空白
  tellraw @s ""

# 海洋の矢
  tellraw @s [{ "text": "  〇海洋の矢","color": "white"}]
  tellraw @s [{ "text": "    クロスボウの矢が補充できます。","color": "white"}]

# 空白
  tellraw @s ""

# 木刀
  tellraw @s [{ "text": "  〇木刀","color": "white"}]
  tellraw @s [{ "text": "    木刀を獲得できます。","color": "white"}]

# 空白
  tellraw @s ""

# タライデント
  tellraw @s [{ "text": "  〇タライデント","color": "white"}]
  tellraw @s [{ "text": "    タライデントを獲得できます。","color": "white"}]

# 空白
  tellraw @s ""

# タラスボウ
  tellraw @s [{ "text": "  〇タラスボウ","color": "white"}]
  tellraw @s [{ "text": "    タラスボウを獲得できます。","color": "white"}]

# 空白
  tellraw @s ""

# タラ
  tellraw @s [{ "text": "  〇タラ","color": "white"}]
  tellraw @s [{ "text": "    スコアが増えます。","color": "white"}]

# 空白
  tellraw @s ""

# ダイヤモンド
  tellraw @s [{ "text": "  〇ダイヤモンド","color": "white"}]
  tellraw @s [{ "text": "    全てのタラを倒します。","color": "white"}]

# 空白
  tellraw @s ""

# ネザースター
  tellraw @s [{ "text": "  〇ネザースター","color": "white"}]
  tellraw @s [{ "text": "    FEVERゲージが最大まで溜まります。","color": "white"}]

# 空白
  tellraw @s ""

# その他説明

  ## 概要
    tellraw @s [{"text": "<概要>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 5"}}]

  ## 武器について
    tellraw @s [{"text": "<武器について>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 1"}}]

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
