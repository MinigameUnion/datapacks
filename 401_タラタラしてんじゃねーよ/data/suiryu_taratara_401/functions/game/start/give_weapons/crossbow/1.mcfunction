#> suiryu_taratara_401:game/start/give_weapons/crossbow/1
#
# クロスボウ付与
# コッドクロス
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4002, display: {Name: '{"text":"コッドクロス","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 1s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+10%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 10
