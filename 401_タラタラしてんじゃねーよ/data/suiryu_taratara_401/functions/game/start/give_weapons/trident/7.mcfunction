#> suiryu_taratara_401:game/start/give_weapons/trident/7
#
# トライデント付与
# ポセイドン
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"ポセイドン","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+20%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 20
