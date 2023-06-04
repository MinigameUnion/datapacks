#> suiryu_taratara_401:game/start/give_weapons/trident/1
#
# トライデント付与
# ビッグフォーク
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"ビッグフォーク","color":"white","italic":false}', Lore: ['{"text":"スコア+5%","color":"aqua","italic":false}', '{"text":"キル数+3","color":"dark_aqua","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+5%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 5

# キル数+3
  scoreboard players add #KillCount suiryu_taratara_401.trigger 3
