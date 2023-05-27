#> suiryu_taratara_401:active/trigger/check
#
# トリガー確認
#
# @within function suiryu_taratara_401:active/player_tick

# ルール説明

  ## 武器について
    execute if score @s suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:active/trigger/rule_weapon

  ## ボーナスアイテムについて
    execute if score @s suiryu_taratara_401.trigger matches 2 run function suiryu_taratara_401:active/trigger/rule_item

  ## タラ以外の魚について
    execute if score @s suiryu_taratara_401.trigger matches 3 run function suiryu_taratara_401:active/trigger/rule_salmon

  ## FEVERについて
    execute if score @s suiryu_taratara_401.trigger matches 4 run function suiryu_taratara_401:active/trigger/rule_fever

  ## 概要
    execute if score @s suiryu_taratara_401.trigger matches 5 run function suiryu_taratara_401:rule

  ## ボーナス効果について
    execute if score @s suiryu_taratara_401.trigger matches 6 run function suiryu_taratara_401:active/trigger/rule_effect
