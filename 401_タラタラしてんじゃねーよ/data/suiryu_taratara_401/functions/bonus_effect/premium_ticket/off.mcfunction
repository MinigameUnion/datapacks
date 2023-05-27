#> suiryu_taratara_401:bonus_effect/premium_ticket/off
#
# プレミアチケット使用
# OFF
#
# @within function suiryu_taratara_401:bonus_effect/premium_ticket/on

# スコアセット
  scoreboard players set #PremiumTicketUsing suiryu_taratara_401.trigger 0

# ボーナス効果リセット
  scoreboard players set #BonusEffect.AddKillCount suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.AddScore30per suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger 0
  scoreboard players set #BonusEffect.miniDouble suiryu_taratara_401.trigger 0

# 看板書き換え

  ## キル数ボーナス
    data modify block 3991 51 6 Text1 set value '{"text":"キル数ボーナス増加","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_kill_count/on"}}'
    data modify block 3991 51 6 Text2 set value '{"text":"500ミニ","color":"yellow"}'
    data modify block 3991 51 6 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## スコア+30%
    data modify block 3991 51 5 Text1 set value '{"text":"スコア+30%","color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_score_30per/on"}}'
    data modify block 3991 51 5 Text2 set value '{"text":"500ミニ","color":"yellow"}'
    data modify block 3991 51 5 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## タラの窒息遅延
    data modify block 3991 51 4 Text1 set value '{"text":"タラの窒息遅延","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/cod_choking_delay/on"}}'
    data modify block 3991 51 4 Text2 set value '{"text":"500ミニ","color":"yellow"}'
    data modify block 3991 51 4 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## FEVERゲージMAX
    data modify block 3991 51 3 Text1 set value '{"text":"FEVERゲージMAX","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/fever_gauge_max/on"}}'
    data modify block 3991 51 3 Text2 set value '{"text":"500ミニ","color":"yellow"}'
    data modify block 3991 51 3 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## 獲得ミニ2倍
    data modify block 3991 51 2 Text1 set value '{"text":"獲得ミニ2倍","color":"yellow","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/mini_double/on"}}'
    data modify block 3991 51 2 Text2 set value '{"text":"500ミニ","color":"yellow"}'
    data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray"}'

  ## プレミアチケット看板
    data modify block 3991 51 0 Text2 set value '{"text":"プレミアチケット","color":"yellow","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:bonus_effect/premium_ticket/on"}}'
    data modify block 3991 51 0 Text4 set value '{"text":"OFF","color":"dark_gray"}'
