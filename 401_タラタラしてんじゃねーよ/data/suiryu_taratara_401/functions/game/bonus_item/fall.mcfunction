#> suiryu_taratara_401:game/bonus_item/fall
#
# ボーナスアイテム召喚
#
# @within
#   function suiryu_taratara_401:game/start/count_down/0
#   function suiryu_taratara_401:game/bonus_item/fall

# 乱数取得
  scoreboard players set #RANGE num_000 100
  function tool_000:random

# マーカー召喚
  summon marker 4000 67 100 {Tags: ["suiryu_taratara_401.summon_marker"]}

# マーカー拡散
  spreadplayers 4000 100 1 18 under 69 false @e[tag=suiryu_taratara_401.summon_marker]

# ボーナスアイテム召喚

  ## ネザースター(FEVERゲージMAX)
    execute if score #RANDOM num_000 matches 0 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:nether_star",Count:1b,tag:{suiryu_taratara_401_bonus_item:3}}}

  ## タラ(スコア+3000)
    execute if score #RANDOM num_000 matches 1..29 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:cod",Count:1b,tag:{suiryu_taratara_401_bonus_item:1}}}

  ## 海洋の矢

    ### 64本
      execute if score #RANDOM num_000 matches 30 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:64b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

    ### 32本
      execute if score #RANDOM num_000 matches 31..32 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:32b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

    ### 16本
      execute if score #RANDOM num_000 matches 33..36 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:16b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

    ### 8本
      execute if score #RANDOM num_000 matches 37..41 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:8b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

    ### 4本
      execute if score #RANDOM num_000 matches 42..47 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

    ### 2本
      execute if score #RANDOM num_000 matches 48..54 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:2b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

    ### 1本
      execute if score #RANDOM num_000 matches 55..62 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'{"text": "海洋の矢","color": "aqua","bold": true,"italic": false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879}}}

  ## 木刀

    ### 弱い木刀
      execute if score #RANDOM num_000 matches 63..78 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:wooden_sword",Count:1b,tag:{display:{Name:'{"text": "木刀","color": "gold","italic": false}'},Enchantments:[{id:"minecraft:sweeping",lvl:1s}]}}}

    ### 強い木刀
      execute if score #RANDOM num_000 matches 79..83 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:wooden_sword",Count:1b,tag:{display:{Name:'{"text": "木刀","color": "gold","italic": false}'},Enchantments:[{id:"minecraft:sweeping",lvl:5s},{id:"minecraft:mending",lvl:1s}]}}}

  ## ダイヤモンド(全てのタラを倒す)
    execute if score #RANDOM num_000 matches 84..93 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:diamond",Count:1b,tag:{suiryu_taratara_401_bonus_item:2}}}

  ## タラスボウ

    ### 弱いタラスボウ
      execute if score #RANDOM num_000 matches 94..96 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:crossbow",Count:1b,tag:{CustomModelData:4001,display:{Name:'{"text": "タラスボウ","color": "white","italic": false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movementSpeed",Amount:1,Operation:1,UUID:[I;0,401,202009,211035],Slot:"mainhand"}]}}}

    ### 強いタラスボウ
      execute if score #RANDOM num_000 matches 97 at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:crossbow",Count:1b,tag:{CustomModelData:4001,display:{Name:'{"text": "タラスボウ","color": "white","italic": false}'},Enchantments:[{id:"minecraft:quick_charge",lvl:2s},{id:"minecraft:piercing",lvl:1s},{id:"minecraft:multishot",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movementSpeed",Amount:1,Operation:1,UUID:[I;0,401,202009,211033],Slot:"mainhand"}]}}}

  ## タライデント
    execute if score #RANDOM num_000 matches 98.. at @e[tag=suiryu_taratara_401.summon_marker] run summon item ~ 50 ~ {Age:600,Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text": "タライデント","color": "white","italic": false}'},Enchantments:[{id:"minecraft:loyalty",lvl:3s}]}}}

# マーカー消去
  kill @e[tag=suiryu_taratara_401.summon_marker]

# 10秒毎にボーナスアイテムを出現させる
  schedule function suiryu_taratara_401:game/bonus_item/fall 10s
