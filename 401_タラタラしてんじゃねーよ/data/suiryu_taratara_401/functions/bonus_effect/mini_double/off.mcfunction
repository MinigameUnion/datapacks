#> suiryu_taratara_401:bonus_effect/mini_double/off
#
# 獲得ミニ2倍
# OFF
#
# @within function suiryu_taratara_401:bonus_effect/mini_double/on

# スコアセット
  scoreboard players set #BonusEffect.miniDouble suiryu_taratara_401.trigger 0

# 看板書き換え
  data modify block 3991 51 2 Text1 set value '{"text":"獲得ミニ2倍","color":"yellow","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/mini_double/on"}}'
  data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray"}'
