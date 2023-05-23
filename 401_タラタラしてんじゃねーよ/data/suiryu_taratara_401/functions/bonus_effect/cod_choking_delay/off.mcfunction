#> suiryu_taratara_401:bonus_effect/cod_choking_delay/off
#
# タラの窒息遅延
# OFF
#
# @within function suiryu_taratara_401:bonus_effect/cod_choking_delay/on

# スコアセット
  scoreboard players set #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger 0

# 看板書き換え
  data modify block 3991 51 4 Text1 set value '{"text":"タラの窒息遅延","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/cod_choking_delay/on"}}'
  data modify block 3991 51 4 Text4 set value '{"text":"OFF","color":"dark_gray"}'
