#> suiryu_taratara_401:game/start/give_weapons/crossbow/2
#
# クロスボウ付与
# 進撃のタラスボウ
#
# @within function suiryu_taratara_401:game/start

# 付与
  give @s crossbow{CustomModelData: 4003, display: {Name: '{"text":"進撃のタラスボウ","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:quick_charge", lvl: 5s}]} 1

# 使用回数減少

  ## 使用回数取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow.Count

  ## 使用回数減少
    execute store result storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow.Count int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1
