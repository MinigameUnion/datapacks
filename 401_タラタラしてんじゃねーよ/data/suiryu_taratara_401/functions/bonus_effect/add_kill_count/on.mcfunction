#> suiryu_taratara_401:bonus_effect/add_kill_count/on
#
# キル数ボーナス
# ON
#
# @within function suiryu_taratara_401:bonus_effect/add_kill_count/off

# 消費ミニを計算する

  ## スコアセット
    scoreboard players set #miniCount_401 suiryu_taratara_401.trigger 500

  ## スコア+30%
    execute if score #BonusEffect.AddScore30per suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniCount_401 suiryu_taratara_401.trigger 500

  ## タラの窒息遅延
    execute if score #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniCount_401 suiryu_taratara_401.trigger 500

  ## FEVERゲージMAX
    execute if score #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniCount_401 suiryu_taratara_401.trigger 500

  ## 獲得ミニ2倍
    execute if score #BonusEffect.miniDouble suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniCount_401 suiryu_taratara_401.trigger 500

# 所持ミニが消費ミニより多ければON

  ## 看板書き換え
    execute if score @s coin_000 >= #miniCount_401 suiryu_taratara_401.trigger run data modify block 3991 51 6 Text1 set value '{"text":"キル数ボーナス増加","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_kill_count/off"}}'
    execute if score @s coin_000 >= #miniCount_401 suiryu_taratara_401.trigger run data modify block 3991 51 6 Text4 set value '{"text":"ON","color":"yellow"}'

  ## スコアセット
    execute if score @s coin_000 >= #miniCount_401 suiryu_taratara_401.trigger run scoreboard players set #BonusEffect.AddKillCount suiryu_taratara_401.trigger 1

# 所持ミニが消費ミニより少なければ通知
# 「ミニが足りません」
  execute if score @s coin_000 < #miniCount_401 suiryu_taratara_401.trigger run tellraw @s [{"nbt":"string.coin","storage":"system_000:storage","interpret":true,"color":"red"},{"text":"が足りません","color":"red"}]

# スコアリセット
  scoreboard players reset #miniCount_401 suiryu_taratara_401.trigger
