#> suiryu_taratara_401:game/start/give_weapons/crossbow/3
#
# クロスボウ付与
# デストロイヤー
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4004, display: {Name: '{"text":"デストロイヤー","color":"white","italic":false}', Lore: ['{"text":"スコア-90%","color":"dark_red","italic":false}', '{"text":"ボーナスミニ無し","color":"dark_red","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 5s}, {id: "minecraft:multishot", lvl: 1s}, {id: "minecraft:piercing", lvl: 10s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア-90%
  scoreboard players remove #ScoreRate suiryu_taratara_401.trigger 90
