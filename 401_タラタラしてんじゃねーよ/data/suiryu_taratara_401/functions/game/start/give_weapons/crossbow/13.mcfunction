#> suiryu_taratara_401:game/start/give_weapons/crossbow/13
#
# クロスボウ付与
# フォルティス
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4014, display: {Name: '{"text":"フォルティス","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}']}, Enchantments: [{id: "minecraft:mending", lvl: 1s}, {id: "minecraft:multishot", lvl: 1s}, {id: "minecraft:piercing", lvl: 10s}, {id: "minecraft:quick_charge", lvl: 5s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+30%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 30
