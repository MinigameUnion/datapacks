#> suiryu_taratara_401:game/start/give_weapons/crossbow/4
#
# クロスボウ付与
# アーバレスト
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4005, display: {Name: '{"text":"アーバレスト","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"キル数+10","color":"dark_aqua","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+10%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 10

# キル数+10
  scoreboard players add #KillCount suiryu_taratara_401.trigger 10
