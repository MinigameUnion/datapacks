#> suiryu_taratara_401:game/start/give_weapons/trident/2
#
# トライデント付与
# 進撃のタライデント
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s trident{display: {Name: '{"text":"進撃のタライデント","color":"white","italic":false}', Lore: ['{"text":"スコア+5%","color":"aqua","italic":false}', '{"text":"FEVER時キル数ボーナス+39","color":"light_purple","italic":false}']}} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+5%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 5

# FEVER中キル数ボーナス+39
  scoreboard players add #inFeverKillCountBonus suiryu_taratara_401.trigger 39
