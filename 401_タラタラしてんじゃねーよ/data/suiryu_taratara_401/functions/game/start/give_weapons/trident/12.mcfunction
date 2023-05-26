#> suiryu_taratara_401:game/start/give_weapons/trident/12
#
# トライデント付与
# ガウディウム
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"ガウディウム","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}', '{"text":"獲得ミニ2倍","color":"yellow","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+30%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 30

# 獲得ミニ2倍
  scoreboard players operation #miniRate suiryu_taratara_401.trigger *= #2 num_000
