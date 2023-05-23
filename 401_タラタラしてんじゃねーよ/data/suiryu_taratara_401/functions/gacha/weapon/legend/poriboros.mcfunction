#> suiryu_taratara_401:gacha/weapon/super_rare/poriboros
#
# ポリボロス
#
# @within function suiryu_taratara_401:gacha/play/003_get_item

# 初獲得時

  ## ガチャを回したプレイヤーに通知
    execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} as @a if score @s id_000 = #GachaPlayerID suiryu_taratara_401.trigger run tellraw @s [{"text": "["},{"text":"レジェンド","color":"yellow"},{"text": "] "},{"text":"ポリボロス"},{"text":" を新たに入手した！"}]

  ## 初獲得ボーナス+8
    execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} run function suiryu_taratara_401:gacha/weapon/first_get_bonus/add_eight

# 再取得時、ガチャを回したプレイヤーに通知
  execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} as @a if score @s id_000 = #GachaPlayerID suiryu_taratara_401.trigger run tellraw @s [{"text": "["},{"text":"レジェンド","color":"yellow"},{"text": "] "},{"text":"ポリボロス"},{"text":" を入手した！"}]

# 使用回数+10

  ## 現在の使用回数を取得する
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros.Count

  ## 使用回数+10(最大100)

    ## 使用回数が91以上の場合
      execute if score #- suiryu_taratara_401.trigger matches 91.. store result storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros.Count int 1 run scoreboard players set #- suiryu_taratara_401.trigger 100

    ## 使用回数が90以下の場合
      execute if score #- suiryu_taratara_401.trigger matches ..90 store result storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros.Count int 1 run scoreboard players add #- suiryu_taratara_401.trigger 10

# 獲得済みフラグを立てる
  execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} run data modify storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros.Get set value 1

# サウンド
  playsound minecraft:item.trident.thunder master @a 3999.51 50.53 9.88 1 2

# パーティクル
  particle minecraft:firework 3999.5 51.5 11.5 0 0 0 1 300 normal
  particle minecraft:firework 3999.5 53.5 11.5 0 0 0 1 300 normal
