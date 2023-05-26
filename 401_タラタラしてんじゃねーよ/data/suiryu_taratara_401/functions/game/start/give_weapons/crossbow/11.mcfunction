#> suiryu_taratara_401:game/start/give_weapons/crossbow/11
#
# クロスボウ付与
# ファントム
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4012, display: {Name: '{"text":"ファントム","color":"white","italic":false}', Lore: ['{"text":"スコア+20%","color":"aqua","italic":false}', '{"text":"4秒に1度、矢を補充する","color":"green","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 3s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+20%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 20

# 4秒に1度、矢を補充する
  schedule function suiryu_taratara_401:weapons/phantom 4s
