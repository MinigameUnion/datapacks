#> suiryu_taratara_401:game/start/give_weapons/trident/11
#
# トライデント付与
# 金色の三叉槍
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"金色の三叉槍","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"ボーナスミニ獲得量+5","color":"yellow","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+20%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 20

# ボーナスミニ獲得量+5
  scoreboard players add #miniBonus suiryu_taratara_401.trigger 5
