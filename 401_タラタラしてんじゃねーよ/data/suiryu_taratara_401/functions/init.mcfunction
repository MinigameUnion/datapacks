#> suiryu_taratara_401:init
#
# 初期化
#
# @within
#   function suiryu_taratara_401:leave_game
#   function suiryu_taratara_401:stage_recreate

# ボーナス効果リセット
  scoreboard players set #BonusEffect.AddKillCount suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.AddScore30per suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.miniDouble suiryu_taratara_401.trigger 0

# プレミアチケット消費リセット
  scoreboard players set #PremiumTicketUsing suiryu_taratara_401.trigger 0

# ボーナス効果看板リセット

  ## キル数ボーナス
    data modify block 3991 51 6 Text1 set value '{"text":"キル数ボーナス増加","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_kill_count/on"}}'
    data modify block 3991 51 6 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## スコア+30%
    data modify block 3991 51 5 Text1 set value '{"text":"スコア+30%","color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_score_30per/on"}}'
    data modify block 3991 51 5 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## タラの窒息遅延
    data modify block 3991 51 4 Text1 set value '{"text":"タラの窒息遅延","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/cod_choking_delay/on"}}'
    data modify block 3991 51 4 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## FEVERゲージMAX
    data modify block 3991 51 3 Text1 set value '{"text":"FEVERゲージMAX","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/fever_gauge_max/on"}}'
    data modify block 3991 51 3 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## 獲得ミニ2倍
    data modify block 3991 51 2 Text1 set value '{"text":"獲得ミニ2倍","color":"yellow","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/mini_double/on"}}'
    data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray"}'

# プレミアチケット看板リセット
  data modify block 3991 51 0 Text2 set value '{"text":"プレミアチケット","color":"yellow","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:bonus_effect/premium_ticket/on"}}'
  data modify block 3991 51 0 Text4 set value '{"text":"OFF","color":"dark_gray"}'

# 選択中トライデント看板リセット
  setblock 3997 51 -5 air
  setblock 3997 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"タライデント","color":"white"}', Text2: '[{"text":"ノーマル","color":"green"}]', Text3: '{"text":"忠誠Ⅰ","color":"gray","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_trident"}}', Text4: '{"text":"","color":"light_purple"}'}

# 選択中トライデント初期化
  scoreboard players set #SelectedTrident suiryu_taratara_401.trigger 0

# 選択中クロスボウ看板リセット
  setblock 3998 51 -5 air
  setblock 3998 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"タラスボウ","color":"white"}', Text2: '[{"text":"ノーマル","color":"green"}]', Text3: '{"text":"高速装填Ⅱ","color":"gray","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:weapons/select_crossbow"}}', Text4: '{"text":"移動速度上昇","color":"aqua"}'}

# 選択中クロスボウ初期化
  scoreboard players set #SelectedCrossbow suiryu_taratara_401.trigger 0
