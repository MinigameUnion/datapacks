#> suiryu_taratara_401:game/start/give_weapons/trident/13
#
# トライデント付与
# フェスティーナ
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"フェスティーナ","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}', '{"text":"スタート時FEVERゲージ+100%","color":"light_purple","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+30%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 30

# スタート時FEVERゲージ+100%
  scoreboard players set #FeverGauge suiryu_taratara_401.trigger 600
