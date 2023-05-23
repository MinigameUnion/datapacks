#> suiryu_taratara_401:bonus_effect/add_score_30per/off
#
# スコア+30%
# OFF
#
# @within function suiryu_taratara_401:bonus_effect/add_score_30per/on

# スコアセット
  scoreboard players set #BonusEffect.AddScore30per suiryu_taratara_401.trigger 0

# 看板書き換え
  data modify block 3991 51 5 Text1 set value '{"text":"スコア+30%","color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_score_30per/on"}}'
  data modify block 3991 51 5 Text4 set value '{"text":"OFF","color":"dark_gray"}'
