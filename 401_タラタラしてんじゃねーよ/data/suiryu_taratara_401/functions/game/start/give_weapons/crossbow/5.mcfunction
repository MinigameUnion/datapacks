#> suiryu_taratara_401:game/start/give_weapons/crossbow/5
#
# クロスボウ付与
# コンパウンドボウ
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4006, display: {Name: '{"text":"コンパウンドボウ","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"タラではない魚を倒した時のスコア減少量-50%","color":"light_purple","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+10%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 10

# スコア減少量-50%

  ## サケ
    scoreboard players operation #ScoreRemoveSalmon suiryu_taratara_401.trigger /= #2 num_000

  ## 熱帯魚
    scoreboard players operation #ScoreRemoveTropicalFish suiryu_taratara_401.trigger /= #2 num_000

  ## フグ
    scoreboard players operation #ScoreRemovePufferfish suiryu_taratara_401.trigger /= #2 num_000
