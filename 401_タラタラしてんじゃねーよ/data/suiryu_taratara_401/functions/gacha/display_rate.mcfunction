#> suiryu_taratara_401:gacha/display_rate
#
# 提供割合表示
# 看板右クリックで実行
#
# @private

# プレイヤーID取得
  scoreboard players operation #PlayerID suiryu_taratara_401.trigger = @s id_000

# データ読み込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify storage suiryu_taratara_401 PlayerData set from entity @s Item.tag.401

# バー
  tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 空白
  tellraw @s ""

# 通常時
  execute unless data storage suiryu_taratara_401 CodFes{Open:1} run function suiryu_taratara_401:gacha/display_rate/normal

# 第1回コッドフェス
  execute if data storage suiryu_taratara_401 CodFes{Open:1} run function suiryu_taratara_401:event/cod_fes/001/display

# ラインナップ表示

  ## 空白
    tellraw @s ""

  ## ラインナップ
    tellraw @s [{"text": "■ ラインナップ","color": "red"}]

  ## ドリーム

    ### バー
      tellraw @s [{"text": "--","color": "white"},{"text": "ドリーム","color":"light_purple"},{"text":"--------------------------------"}]

    ### トライデント
      tellraw @s [{"text": "  〇トライデント"}]

    ### ガウディウム

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1} run tellraw @s [{"text":"    ガウディウム"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Gaudium{Get:1} run tellraw @s [{"text":"    ガウディウム(未獲得)"}]

    ### フェスティーナ

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1} run tellraw @s [{"text":"    フェスティーナ"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Festina{Get:1} run tellraw @s [{"text":"    フェスティーナ(未獲得)"}]

    ### クロスボウ
      tellraw @s [{"text": "  〇クロスボウ"}]

    ### リームロード

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1} run tellraw @s [{"text":"    リームロード"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.ReamLoad{Get:1} run tellraw @s [{"text":"    リームロード(未獲得)"}]

    ### フォルティス

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1} run tellraw @s [{"text":"    フォルティス"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Dream.Fortis{Get:1} run tellraw @s [{"text":"    フォルティス(未獲得)"}]

  ## レジェンド

    ### バー
      tellraw @s [{"text": "--","color": "white"},{"text": "レジェンド","color":"yellow"},{"text":"--------------------------------"}]

    ### トライデント
      tellraw @s [{"text": "  〇トライデント"}]

    ### トリアイナ

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1} run tellraw @s [{"text":"    トリアイナ"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Triaina{Get:1} run tellraw @s [{"text":"    トリアイナ(未獲得)"}]

    ### トリシューラ

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1} run tellraw @s [{"text":"    トリシューラ"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Trisura{Get:1} run tellraw @s [{"text":"    トリシューラ(未獲得)"}]

    ### ブリューナク

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1} run tellraw @s [{"text":"    ブリューナク"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Brunak{Get:1} run tellraw @s [{"text":"    ブリューナク(未獲得)"}]

    ### 金色の三叉槍

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1} run tellraw @s [{"text":"    金色の三叉槍"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.GoldenTrident{Get:1} run tellraw @s [{"text":"    金色の三叉槍(未獲得)"}]

    ### クロスボウ
      tellraw @s [{"text": "  〇クロスボウ"}]

    ### トライクロス

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1} run tellraw @s [{"text":"    トライクロス"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.TriCross{Get:1} run tellraw @s [{"text":"    トライクロス(未獲得)"}]

    ### スコルピウス

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1} run tellraw @s [{"text":"    スコルピウス"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Scorpius{Get:1} run tellraw @s [{"text":"    スコルピウス(未獲得)"}]

    ### ポリボロス

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} run tellraw @s [{"text":"    ポリボロス"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.PoriBoros{Get:1} run tellraw @s [{"text":"    ポリボロス(未獲得)"}]

    ### ファントム

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1} run tellraw @s [{"text":"    ファントム"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Legend.Phantom{Get:1} run tellraw @s [{"text":"    ファントム(未獲得)"}]

  ## スーパーレア

    ### バー
      tellraw @s [{"text": "--","color": "white"},{"text": "スーパーレア","color":"aqua"},{"text":"--------------------------------"}]

    ### トライデント
      tellraw @s [{"text": "  〇トライデント"}]

    ### スタートライデント

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1} run tellraw @s [{"text":"    スタートライデント"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StarTrident{Get:1} run tellraw @s [{"text":"    スタートライデント(未獲得)"}]

    ### オケアノス

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1} run tellraw @s [{"text":"    オケアノス"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Okeanos{Get:1} run tellraw @s [{"text":"    オケアノス(未獲得)"}]

    ### ロイヤルトライデント

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1} run tellraw @s [{"text":"    ロイヤルトライデント"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.LoyalTrident{Get:1} run tellraw @s [{"text":"    ロイヤルトライデント(未獲得)"}]

    ### ポセイドン

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1} run tellraw @s [{"text":"    ポセイドン"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Poseidon{Get:1} run tellraw @s [{"text":"    ポセイドン(未獲得)"}]

    ### クロスボウ
      tellraw @s [{"text": "  〇クロスボウ"}]

    ### アーバレスト

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1} run tellraw @s [{"text":"    アーバレスト"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.Arbarest{Get:1} run tellraw @s [{"text":"    アーバレスト(未獲得)"}]

    ### コンパウンドボウ

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1} run tellraw @s [{"text":"    コンパウンドボウ"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.CompaundBow{Get:1} run tellraw @s [{"text":"    コンパウンドボウ(未獲得)"}]

    ### フレイムフラワー

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1} run tellraw @s [{"text":"    フレイムフラワー"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.FrameFlower{Get:1} run tellraw @s [{"text":"    フレイムフラワー(未獲得)"}]

    ### ストロングショット

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1} run tellraw @s [{"text":"    ストロングショット"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.SuperRare.StrongShot{Get:1} run tellraw @s [{"text":"    ストロングショット(未獲得)"}]

  ## レア

    ### バー
      tellraw @s [{"text": "--","color": "white"},{"text": "レア","color":"gold"},{"text":"--------------------------------"}]

    ### トライデント
      tellraw @s [{"text": "  〇トライデント"}]

    ### ビッグフォーク

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1} run tellraw @s [{"text":"    ビッグフォーク"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.BigFork{Get:1} run tellraw @s [{"text":"    ビッグフォーク(未獲得)"}]

    ### 進撃のタライデント

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1} run tellraw @s [{"text":"    進撃のタライデント"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTaraident{Get:1} run tellraw @s [{"text":"    進撃のタライデント(未獲得)"}]

    ### コッドキラー

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1} run tellraw @s [{"text":"    コッドキラー"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodKiller{Get:1} run tellraw @s [{"text":"    コッドキラー(未獲得)"}]

    ### クロスボウ
      tellraw @s [{"text": "  〇クロスボウ"}]

    ### コッドクロス

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1} run tellraw @s [{"text":"    コッドクロス"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.CodCross{Get:1} run tellraw @s [{"text":"    コッドクロス(未獲得)"}]

    ### 進撃のタラスボウ

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1} run tellraw @s [{"text":"    進撃のタラスボウ"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.SingekiTarasBow{Get:1} run tellraw @s [{"text":"    進撃のタラスボウ(未獲得)"}]

    ### デストロイヤー

      #### 取得済み
        execute if data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1} run tellraw @s [{"text":"    デストロイヤー"}]

      #### 未取得
        execute unless data storage suiryu_taratara_401 PlayerData.Weapons.Rare.Destroyer{Get:1} run tellraw @s [{"text":"    デストロイヤー(未獲得)"}]

# 初獲得ボーナス

  ## 空白
    tellraw @s ""

  ## 初獲得ボーナス
    tellraw @s [{"text": "■ 初獲得ボーナス","color": "red"}]

  ## 説明
    tellraw @s [{"text": "  武器を初めて入手すると、初獲得ボーナスを獲得できます。"}]

  ## 初獲得ボーナスが設定されていない場合、設定する
    execute unless data storage suiryu_taratara_401 PlayerData.Weapons.FirstGetBonus run data modify storage suiryu_taratara_401 PlayerData.Weapons.FirstGetBonus set value 0

  ## 初獲得ボーナス表示
    tellraw @s [{"text": "  現在の初獲得ボーナス・・・スコア+"},{"nbt":"PlayerData.Weapons.FirstGetBonus","storage": "suiryu_taratara_401"},{"text": "%"}]

# スコアリセット
  scoreboard players reset #PlayerID suiryu_taratara_401.trigger

# ストレージリセット
  data remove storage suiryu_taratara_401 PlayerData
