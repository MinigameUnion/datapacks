#> suiryu_taratara_401:active/trigger/rule_weapon
#
# ルール説明
# 武器について
#
# @within function suiryu_taratara_401:active/trigger/check

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# 武器
  tellraw @s [{ "text": "■ 武器","color": "gold"}]
  tellraw @s [{ "text": "  トライデントとクロスボウを使用することができます。","color": "white"}]
  tellraw @s [{ "text": "  最初はタライデントとタラスボウしか使えませんが、","color": "white"}]
  tellraw @s [{ "text": "  プレミアガチャで武器を追加することができます。","color": "white"}]

# 空白
  tellraw @s ""

# レアリティ
  tellraw @s [{ "text": "  武器にはレアリティがあり、レア度が高くなるほど性能が高くなります。","color": "white"}]

# 空白
  tellraw @s ""

# プレミアガチャ
  tellraw @s [{ "text": "  プレミアガチャで獲得した武器は使用回数が決まっており、","color": "white"}]
  tellraw @s [{ "text": "  使用回数は最大で100回分まで保持することができます。","color": "white"}]

# 空白
  tellraw @s ""

# その他説明

  ## 武器について
    tellraw @s [{"text": "<概要>","color": "green","underlined": true,"clickEvent": {"action":"run_command","value":"/trigger suiryu_taratara_401.trigger set 5"}}]

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
