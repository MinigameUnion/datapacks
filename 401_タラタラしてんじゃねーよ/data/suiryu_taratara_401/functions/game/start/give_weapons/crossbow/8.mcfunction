#> suiryu_taratara_401:game/start/give_weapons/crossbow/8
#
# クロスボウ付与
# トライクロス
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4009, display: {Name: '{"text":"トライクロス","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 3s}, {id: "minecraft:mending", lvl: 1s}, {id: "minecraft:multishot", lvl: 1s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+20%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 20
