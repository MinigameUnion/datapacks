#> suiryu_taratara_401:bonus_effect/fever_gauge_max/off
#
# FEVERゲージMAX
# OFF
#
# @within function suiryu_taratara_401:bonus_effect/fever_gauge_max/on

# スコアセット
  scoreboard players set #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger 0

# 看板書き換え
  data modify block 3991 51 3 Text1 set value '{"text":"FEVERゲージMAX","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/fever_gauge_max/on"}}'
  data modify block 3991 51 3 Text4 set value '{"text":"OFF","color":"dark_gray"}'
