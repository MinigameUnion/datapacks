#> suiryu_taratara_401:game/player_tick
#
# プレイヤーから常時実行
#
# @within function suiryu_taratara_401:game/tick

# スコアリセット
  scoreboard players set #PlayerCheck suiryu_taratara_401.trigger 1

# 継続ボーナス
  scoreboard players operation #Score suiryu_taratara_401.trigger += #TimeBonus suiryu_taratara_401.trigger

# 毒状態の場合、スコア減少
  execute if predicate suiryu_taratara_401:is_poison run scoreboard players remove #Score suiryu_taratara_401.trigger 600

# ボーナスアイテム

  ## タラ

    ### 通常時、スコア+3000
      execute if score #inFever suiryu_taratara_401.trigger matches 0 if predicate suiryu_taratara_401:have_bonus_item/cod run scoreboard players add #Score suiryu_taratara_401.trigger 3000

    ### FEVER時、スコア+30000
      execute if score #inFever suiryu_taratara_401.trigger matches 1 if predicate suiryu_taratara_401:have_bonus_item/cod run scoreboard players add #Score suiryu_taratara_401.trigger 30000

    ### 消去
      execute if predicate suiryu_taratara_401:have_bonus_item/cod run clear @s cod{suiryu_taratara_401_bonus_item:1}

  ## ダイヤモンド

    ### 全てのタラを倒す
      execute if predicate suiryu_taratara_401:have_bonus_item/diamond as @e[tag=suiryu_taratara_401.cod,predicate=suiryu_taratara_401:location/stage] at @s run function suiryu_taratara_401:game/fish/cod_kill

    ### 消去
      execute if predicate suiryu_taratara_401:have_bonus_item/diamond run clear @s diamond{suiryu_taratara_401_bonus_item:2}

  ## ネザースター

    ### FEVERゲージMAX
      execute if predicate suiryu_taratara_401:have_bonus_item/nether_star run function suiryu_taratara_401:game/fever/start

    ### 消去
      execute if predicate suiryu_taratara_401:have_bonus_item/nether_star run clear @s nether_star{suiryu_taratara_401_bonus_item:3}
