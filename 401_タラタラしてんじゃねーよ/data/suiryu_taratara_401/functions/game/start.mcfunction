#> suiryu_taratara_401:game/start
#
# ゲーム開始
#
# @within function suiryu_taratara_401:game/start_check

# 経験値・矢・トライデント・アイテム・魚消去
  kill @e[type=#suiryu_taratara_401:first_killed,predicate=suiryu_taratara_401:location/stage]

# プレイヤーIDを取得する
  scoreboard players operation #PlayingID suiryu_taratara_401.trigger = @s id_000

# ステージにtp
  tp @s 4000 50.5 100

# ロビーに戻る看板削除
  setblock 3999 51 81 air

# スコア初期化

  ## スコア
    scoreboard players set #Score suiryu_taratara_401.trigger 0

  ## FEVERゲージ
    scoreboard players set #FeverGauge suiryu_taratara_401.trigger 0

  ## FEVERゲージ増加量
    scoreboard players set #FeverGaugeUpAmount suiryu_taratara_401.trigger 10

  ## FEVER中フラグ
    scoreboard players set #inFever suiryu_taratara_401.trigger 0

  ## キル数
    scoreboard players set #KillCount suiryu_taratara_401.trigger 0

  ## キル数ボーナス
    scoreboard players set #KillCountBonus suiryu_taratara_401.trigger 0

  ## FEVER中キル数ボーナス
    scoreboard players set #inFeverKillCountBonus suiryu_taratara_401.trigger 0

  ## スコア倍率
    scoreboard players set #ScoreRate suiryu_taratara_401.trigger 100

  ## タラ窒息時間
    scoreboard players set #CodChokingDelay suiryu_taratara_401.trigger 100

  ## ボーナスミニ
    scoreboard players set #miniBonus suiryu_taratara_401.trigger 5

  ## タラ供給カウンター
    scoreboard players set #CodSuplyCount suiryu_taratara_401.trigger 0

  ## 継続ボーナス
    scoreboard players set #TimeBonus suiryu_taratara_401.trigger 1

  ## 獲得ミニ倍率
    scoreboard players set #miniRate suiryu_taratara_401.trigger 1

  ## FEVER中キル時ゲージ回復量
    scoreboard players set #FeverGaugeKillUp suiryu_taratara_401.trigger 0

  ## スコア減少量

    ### サケ
      scoreboard players set #ScoreRemoveSalmon suiryu_taratara_401.trigger 90000

    ### 熱帯魚
      scoreboard players set #ScoreRemoveTropicalFish suiryu_taratara_401.trigger 150000

    ### フグ
      scoreboard players set #ScoreRemovePufferfish suiryu_taratara_401.trigger 300000

    ### イカ
      scoreboard players set #ScoreRemoveSquid suiryu_taratara_401.trigger 2

# アイテム消去
  clear @s

# ボーナス効果

  ## ミニ消費
    scoreboard players operation @s remove_coin_000 = #miniNeeded suiryu_taratara_401.trigger

  ## キル数ボーナス増加
    execute if score #BonusEffect.AddKillCount suiryu_taratara_401.trigger matches 1 run scoreboard players add #KillCountBonus suiryu_taratara_401.trigger 100

  ## スコア+30%
    execute if score #BonusEffect.AddScore30per suiryu_taratara_401.trigger matches 1 run scoreboard players add #ScoreRate suiryu_taratara_401.trigger 30

  ## タラの窒息遅延
    execute if score #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger matches 1 run scoreboard players add #CodChokingDelay suiryu_taratara_401.trigger 100

  ## FEVERゲージMAX
    execute if score #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger matches 1 run scoreboard players set #FeverGauge suiryu_taratara_401.trigger 600

  ## 獲得ミニ2倍
    execute if score #BonusEffect.miniDouble suiryu_taratara_401.trigger matches 1 run scoreboard players operation #miniRate suiryu_taratara_401.trigger *= #2 num_000

  ## スコアリセット
    scoreboard players set #BonusEffect.AddKillCount suiryu_taratara_401.trigger 0
    scoreboard players set #BonusEffect.AddScore30per suiryu_taratara_401.trigger 0
    scoreboard players set #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger 0
    scoreboard players set #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger 0
    scoreboard players set #BonusEffect.miniDouble suiryu_taratara_401.trigger 0

  ## ボーナス効果看板リセット

    ### キル数ボーナス
      data modify block 3991 51 6 Text1 set value '{"text":"キル数ボーナス増加","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_kill_count/on"}}'
      data modify block 3991 51 6 Text4 set value '{"text":"OFF","color":"dark_gray"}'

    ### スコア+30%
      data modify block 3991 51 5 Text1 set value '{"text":"スコア+30%","color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/add_score_30per/on"}}'
      data modify block 3991 51 5 Text4 set value '{"text":"OFF","color":"dark_gray"}'

    ### タラの窒息遅延
      data modify block 3991 51 4 Text1 set value '{"text":"タラの窒息遅延","color":"blue","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/cod_choking_delay/on"}}'
      data modify block 3991 51 4 Text4 set value '{"text":"OFF","color":"dark_gray"}'

    ### FEVERゲージMAX
      data modify block 3991 51 3 Text1 set value '{"text":"FEVERゲージMAX","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/fever_gauge_max/on"}}'
      data modify block 3991 51 3 Text4 set value '{"text":"OFF","color":"dark_gray"}'

    ### 獲得ミニ2倍
      data modify block 3991 51 2 Text1 set value '{"text":"獲得ミニ2倍","color":"yellow","clickEvent":{"action":"run_command","value":"/execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:bonus_effect/mini_double/on"}}'
      data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray"}'

# プレミアチケット消費

  ## プレミアチケット枚数取得
    execute if score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.PremiumTicketCount

  ## プレミアチケット消費
    execute if score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 store result storage suiryu_taratara_401 PlayerData.PremiumTicketCount int 1 run scoreboard players remove #- suiryu_taratara_401.trigger 1

  ## スコアリセット
    scoreboard players set #PremiumTicketUsing suiryu_taratara_401.trigger 0

  ## プレミアチケット看板リセット
    data modify block 3991 51 0 Text2 set value '{"text":"プレミアチケット","color":"yellow","clickEvent":{"action":"run_command","value":"/function suiryu_taratara_401:bonus_effect/premium_ticket/on"}}'
    data modify block 3991 51 0 Text4 set value '{"text":"OFF","color":"dark_gray"}'

# 武器付与

  ## トライデント

    ### タライデント
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 0 run give @s trident{CustomModelData: 4001, display: {Name: '{"text":"タライデント","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:loyalty", lvl: 1s}]} 1

    ### ビッグフォーク
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:game/start/give_weapons/trident/1

    ### 進撃のタライデント
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 run function suiryu_taratara_401:game/start/give_weapons/trident/2

    ### コッドキラー
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 run function suiryu_taratara_401:game/start/give_weapons/trident/3

    ### スタートライデント
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 run function suiryu_taratara_401:game/start/give_weapons/trident/4

    ### オケアノス
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 run function suiryu_taratara_401:game/start/give_weapons/trident/5

    ### ロイヤルトライデント
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 run function suiryu_taratara_401:game/start/give_weapons/trident/6

    ### ポセイドン
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 run function suiryu_taratara_401:game/start/give_weapons/trident/7

    ### トリアイナ
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 run function suiryu_taratara_401:game/start/give_weapons/trident/8

    ### トリシューラ
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 run function suiryu_taratara_401:game/start/give_weapons/trident/9

    ### ブリューナク
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 run function suiryu_taratara_401:game/start/give_weapons/trident/10

    ### 金色の三叉槍
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 run function suiryu_taratara_401:game/start/give_weapons/trident/11

    ### ガウディウム
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 run function suiryu_taratara_401:game/start/give_weapons/trident/12

    ### フェスティーナ
      execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 run function suiryu_taratara_401:game/start/give_weapons/trident/13

  ## クロスボウ

    ### タラスボウ
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 0 run give @s crossbow{CustomModelData: 4001, display: {Name: '{"text":"タラスボウ","color":"white","italic":false}'}, Enchantments: [{id: "minecraft:quick_charge", lvl: 2s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movementSpeed", Amount: 1, Operation: 1, UUID: [I; 0, 401, 20200921, 2234], Slot: "mainhand"}]} 1

    ### コッドクロス
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:game/start/give_weapons/crossbow/1

    ### 進撃のタラスボウ
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 run function suiryu_taratara_401:game/start/give_weapons/crossbow/2

    ### デストロイヤー
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 run function suiryu_taratara_401:game/start/give_weapons/crossbow/3

    ### アーバレスト
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 run function suiryu_taratara_401:game/start/give_weapons/crossbow/4

    ### コンパウンドボウ
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 run function suiryu_taratara_401:game/start/give_weapons/crossbow/5

    ### フレイムフラワー
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 run function suiryu_taratara_401:game/start/give_weapons/crossbow/6

    ### ストロングショット
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 run function suiryu_taratara_401:game/start/give_weapons/crossbow/7

    ### トライクロス
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 run function suiryu_taratara_401:game/start/give_weapons/crossbow/8

    ### スコルピウス
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 run function suiryu_taratara_401:game/start/give_weapons/crossbow/9

    ### ポリボロス
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 run function suiryu_taratara_401:game/start/give_weapons/crossbow/10

    ### ファントム
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 run function suiryu_taratara_401:game/start/give_weapons/crossbow/11

    ### リームロード
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 run function suiryu_taratara_401:game/start/give_weapons/crossbow/12

    ### フォルティス
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 run function suiryu_taratara_401:game/start/give_weapons/crossbow/13

    ### デストロイヤーはボーナスミニなし
      execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 run scoreboard players set #miniBonus suiryu_taratara_401.trigger 0

# 看板更新

  ## トライデント
    function suiryu_taratara_401:weapons/select_trident_redisplay

  ## クロスボウ
    function suiryu_taratara_401:weapons/select_crossbow_redisplay

# 海洋の矢付与
  give @s tipped_arrow{display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'},HideFlags:32,CustomPotionEffects:[{Id:6,Amplifier:99b,Duration:20,ShowParticles:0b}],CustomPotionColor:58879} 64

# 初獲得ボーナス

  ## 初獲得ボーナス取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.FirstGetBonus

  ## スコア倍率増加
    scoreboard players operation #ScoreRate suiryu_taratara_401.trigger += #- suiryu_taratara_401.trigger

# FEVERゲージ最大値
  execute if score #FeverGauge suiryu_taratara_401.trigger matches 601.. run scoreboard players set #FeverGauge suiryu_taratara_401.trigger 600

# データ書き込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify entity @s Item.tag.401 set from storage suiryu_taratara_401 PlayerData

# 1s後にカウントダウン開始
  schedule function suiryu_taratara_401:game/start/count_down/3 1s

# スタート看板書き換え
  data modify block 3999 51 -5 Text2 set value '[{"text":"プレイ中","color":"red","bold":true}]'
