#> suiryu_taratara_401:game/start/give_weapons/trident/10
#
# トライデント付与
# ブリューナク
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"ブリューナク","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"FEVERゲージ上昇量+100%","color":"light_purple","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+20%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 20

# FEVERゲージ上昇量+100%
  scoreboard players add #FeverGaugeUpAmount suiryu_taratara_401.trigger 10
