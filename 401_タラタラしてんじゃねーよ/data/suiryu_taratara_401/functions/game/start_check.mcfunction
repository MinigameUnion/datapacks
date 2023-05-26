#> suiryu_taratara_401:game/start_check
#
# ゲーム開始確認
# 看板右クリックで実行
#
# @private

# プレイヤーID取得
  scoreboard players operation #PlayerID suiryu_taratara_401.trigger = @s id_000

# データ読み込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify storage suiryu_taratara_401 PlayerData set from entity @s Item.tag.401

# スコア設定
  scoreboard players set #- suiryu_taratara_401.trigger 0

# 選択しているトライデントが有効化されているか確認する

  ## ビッグフォーク
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## 進撃のタライデント
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## コッドキラー
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## スタートライデント
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## オケアノス
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## ロイヤルトライデント
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## ポセイドン
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## トリアイナ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## トリシューラ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## ブリューナク
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## 金色の三叉槍
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## ガウディウム
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## フェスティーナ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 1

  ## 通知
    execute if score #- suiryu_taratara_401.trigger matches 1 run tellraw @s [{"text": "[!] そのトライデントは有効化されていません","color": "red"}]

# 選択しているクロスボウが有効化されているか確認する

  ## コッドクロス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## 進撃のタラスボウ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## デストロイヤー
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## アーバレスト
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## コンパウンドボウ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## フレイムフラワー
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## ストロングショット
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## トライクロス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## スコルピウス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## ポリボロス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## ファントム
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## リームロード
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## フォルティス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1} run scoreboard players set #- suiryu_taratara_401.trigger 2

  ## 通知
    execute if score #- suiryu_taratara_401.trigger matches 2 run tellraw @s [{"text": "[!] そのクロスボウは有効化されていません","color": "red"}]

# 選択しているトライデントの回数が残っているか確認する

  ## ビッグフォーク
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 1 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## 進撃のタライデント
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 2 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## コッドキラー
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 3 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## スタートライデント
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 4 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## オケアノス
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 5 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## ロイヤルトライデント
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 6 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## ポセイドン
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 7 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## トリアイナ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 8 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## トリシューラ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 9 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## ブリューナク
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 10 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## 金色の三叉槍
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 11 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## ガウディウム
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 12 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## フェスティーナ
    execute if score #SelectedTrident suiryu_taratara_401.trigger matches 13 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 3

  ## 表示更新
    execute if score #- suiryu_taratara_401.trigger matches 3 run function suiryu_taratara_401:weapons/select_trident_recount

  ## 通知
    execute if score #- suiryu_taratara_401.trigger matches 3 run tellraw @s [{"text": "[!] そのトライデントは回数が残されていません","color": "red"}]

# 選択しているクロスボウの回数が残っているか確認する

  ## コッドクロス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 1 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## 進撃のタラスボウ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 2 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## デストロイヤー
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 3 if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## アーバレスト
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 4 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## コンパウンドボウ
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 5 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## フレイムフラワー
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 6 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## ストロングショット
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 7 if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## トライクロス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 8 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## スコルピウス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 9 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## ポリボロス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 10 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## ファントム
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 11 if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## リームロード
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 12 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## フォルティス
    execute if score #SelectedCrossbow suiryu_taratara_401.trigger matches 13 if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1,Count:0} run scoreboard players set #- suiryu_taratara_401.trigger 4

  ## 表示更新
    execute if score #- suiryu_taratara_401.trigger matches 4 run function suiryu_taratara_401:weapons/select_crossbow_recount

  ## 通知
    execute if score #- suiryu_taratara_401.trigger matches 4 run tellraw @s [{"text": "[!] そのクロスボウは回数が残されていません","color": "red"}]

# ボーナス効果が発動できるミニを持っているか確認する

  ## スコアセット
    scoreboard players set #miniNeeded suiryu_taratara_401.trigger 0

  ## キル数ボーナス
    execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 if score #BonusEffect.AddKillCount suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniNeeded suiryu_taratara_401.trigger 500

  ## スコア+30%
    execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 if score #BonusEffect.AddScore30per suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniNeeded suiryu_taratara_401.trigger 500

  ## タラの窒息遅延
    execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 if score #BonusEffect.CodChokingDelay suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniNeeded suiryu_taratara_401.trigger 500

  ## FEVERゲージMAX
    execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 if score #BonusEffect.FeverGaugeMax suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniNeeded suiryu_taratara_401.trigger 500

  ## 獲得ミニ2倍
    execute unless score #PremiumTicketUsing suiryu_taratara_401.trigger matches 1 if score #BonusEffect.miniDouble suiryu_taratara_401.trigger matches 1 run scoreboard players add #miniNeeded suiryu_taratara_401.trigger 500

  ## ミニ確認
    execute if score #miniNeeded suiryu_taratara_401.trigger > @s coin_000 run scoreboard players set #- suiryu_taratara_401.trigger 5

  ## 通知
    execute if score #- suiryu_taratara_401.trigger matches 5 run tellraw @s [{"text": "[!] ボーナス効果を発動するために必要なミニが足りません","color": "red"}]

# 開始
  execute if score #- suiryu_taratara_401.trigger matches 0 run function suiryu_taratara_401:game/start

# スコアリセット
  scoreboard players reset #PlayerID suiryu_taratara_401.trigger

# ストレージリセット
  data remove storage suiryu_taratara_401 PlayerData
