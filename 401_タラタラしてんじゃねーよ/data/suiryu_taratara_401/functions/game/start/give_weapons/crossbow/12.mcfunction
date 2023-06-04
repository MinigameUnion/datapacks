#> suiryu_taratara_401:game/start/give_weapons/crossbow/12
#
# クロスボウ付与
# リームロード
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4013, display: {Name: '{"text":"リームロード","color":"white","italic":false}', Lore: ['{"text":"スコア+30%","color":"aqua","italic":false}', '{"text":"FEVER中キル時ゲージ回復","color":"light_purple","italic":false}']}, Enchantments: [{id: "minecraft:quick_charge", lvl: 4s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

# スコア+30%
  scoreboard players add #ScoreRate suiryu_taratara_401.trigger 30

# FEVER中キル時ゲージ回復
  scoreboard players add #FeverGaugeKillUp suiryu_taratara_401.trigger 10
