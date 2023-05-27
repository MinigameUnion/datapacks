#> suiryu_taratara_401:game/start/give_weapons/crossbow/6
#
# クロスボウ付与
# フレイムフラワー
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4007, display: {Name: '{"text":"フレイムフラワー","color":"white","italic":false}', Lore: ['{"text":"スコア+10%","color":"aqua","italic":false}', '{"text":"10秒に1度、花火を補充する","color":"yellow","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+10%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 10

# 10s後に花火補充
  schedule function suiryu_taratara_401:weapons/flame_flower 10s
