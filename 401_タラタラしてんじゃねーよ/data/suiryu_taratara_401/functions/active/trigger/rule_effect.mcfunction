#> suiryu_taratara_401:active/trigger/rule_effect
#
# ルール説明
# ボーナス効果について
#
# @within function suiryu_taratara_401:active/trigger/check

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# ボーナス効果
  tellraw @s [{ "text": "■ ボーナス効果","color": "gold"}]
  tellraw @s [{ "text": "  ミニを消費することでスコアをより伸ばすことができます。","color": "white"}]
  tellraw @s [{ "text": "  各効果の看板を右クリックしてONにすることで効果が発動します。","color": "white"}]
  tellraw @s [{ "text": "  プレミアチケットを1枚使用することで、","color": "white"}]
  tellraw @s [{ "text": "  全ての効果をミニの消費無しで発動することができます。","color": "white"}]

# 空白
  tellraw @s ""

# キル数ボーナス増加
  tellraw @s [{ "text": "  〇キル数ボーナス増加","color": "white"}]
  tellraw @s [{ "text": "    タラを倒した数によるスコアボーナスが増えます。","color": "white"}]

# 空白
  tellraw @s ""

# スコア+30%
  tellraw @s [{ "text": "  〇スコア+30%","color": "white"}]
  tellraw @s [{ "text": "    スコアが30%上がります。","color": "white"}]

# 空白
  tellraw @s ""

# タラの窒息遅延
  tellraw @s [{ "text": "  〇タラの窒息遅延","color": "white"}]
  tellraw @s [{ "text": "    タラが窒息するまでの時間が長くなります。","color": "white"}]

# 空白
  tellraw @s ""

# FEVERゲージMAX
  tellraw @s [{ "text": "  〇FEVERゲージMAX","color": "white"}]
  tellraw @s [{ "text": "    FEVERゲージが最大の状態でゲームをスタートします。","color": "white"}]

# 空白
  tellraw @s ""

# 獲得ミニ2倍
  tellraw @s [{ "text": "  〇獲得ミニ2倍","color": "white"}]
  tellraw @s [{ "text": "    獲得できるミニの量が2倍になります。","color": "white"}]

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

  ## FEVERについて
    tellraw @s [{"text": "<FEVERについて>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 4"}}]

# スコア初期化
  scoreboard players set @s suiryu_taratara_401.trigger 0

# トリガー有効化
  scoreboard players enable @s suiryu_taratara_401.trigger
