#> suiryu_taratara_401:game/start/give_weapons/trident/3
#
# トライデント付与
# コッドキラー
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"コッドキラー","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+10%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 10
