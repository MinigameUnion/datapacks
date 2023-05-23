#> suiryu_taratara_401:bonus_effect/premium_ticket/on0
#
# プレミアチケット使用
# ON
#
# @within function suiryu_taratara_401:bonus_effect/premium_ticket/on

# スコアセット
  scoreboard players set #PremiumTicketUsing suiryu_taratara_401.trigger 1

# ボーナス効果セット
  scoreboard players set #BonusEffect.AddKillCount suiryu_taratara_401.trigger 1
  scoreboard players set #BonusEffect.AddScore30per suiryu_taratara_401.trigger 1
  scoreboard players set #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger 1
  scoreboard players set #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger 1
  scoreboard players set #BonusEffect.miniDouble suiryu_taratara_401.trigger 1

# 看板書き換え

  ## キル数ボーナス
    data modify block 3991 51 6 Text2 set value '{"text":"0ミニ","color":"yellow"}'
    data modify block 3991 51 6 Text4 set value '{"text":"ON","color":"yellow"}'

  ## スコア+30%
    data modify block 3991 51 5 Text2 set value '{"text":"0ミニ","color":"yellow"}'
    data modify block 3991 51 5 Text4 set value '{"text":"ON","color":"yellow"}'

  ## タラの窒息遅延
    data modify block 3991 51 4 Text2 set value '{"text":"0ミニ","color":"yellow"}'
    data modify block 3991 51 4 Text4 set value '{"text":"ON","color":"yellow"}'

  ## FEVERゲージMAX
    data modify block 3991 51 3 Text2 set value '{"text":"0ミニ","color":"yellow"}'
    data modify block 3991 51 3 Text4 set value '{"text":"ON","color":"yellow"}'

  ## 獲得ミニ2倍
    data modify block 3991 51 2 Text2 set value '{"text":"0ミニ","color":"yellow"}'
    data modify block 3991 51 2 Text4 set value '{"text":"ON","color":"yellow"}'

  ## プレミアチケット看板
    data modify block 3991 51 0 Text2 set value '{"text":"プレミアチケット","color":"yellow","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:bonus_effect/premium_ticket/off"}}'
    data modify block 3991 51 0 Text4 set value '{"text":"ON","color":"yellow"}'
