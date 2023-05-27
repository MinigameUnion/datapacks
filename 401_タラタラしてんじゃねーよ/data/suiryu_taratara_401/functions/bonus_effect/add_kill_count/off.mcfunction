#> suiryu_taratara_401:bonus_effect/add_kill_count/off
#
# キル数ボーナス
# OFF
#
# @within function suiryu_taratara_401:bonus_effect/add_kill_count/on

# スコアセット
  scoreboard players set #BonusEffect.AddKillCount suiryu_taratara_401.trigger 0

# 看板書き換え
  data modify block 3991 51 6 Text1 set value '{"text":"キル数ボーナス増加","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_kill_count/on"}}'
  data modify block 3991 51 6 Text4 set value '{"text":"OFF","color":"dark_gray"}'
