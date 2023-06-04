#> suiryu_taratara_401:gacha/play/003_get_item
#
# ガチャ
# アイテム出現
#
# @within function suiryu_taratara_401:gacha/play/002_check_item

# スコアセット
  scoreboard players set #GachaPlaying suiryu_taratara_401.trigger 0

# 再帰終了
  schedule clear suiryu_taratara_401:gacha/play/002_check_item

# データ読み込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #GachaPlayerID suiryu_taratara_401.trigger run data modify storage suiryu_taratara_401 PlayerData set from entity @s Item.tag.401

# ガチャを回したプレイヤーにバー表示
  execute as @a if score @s id_000 = #GachaPlayerID suiryu_taratara_401.trigger run tellraw @s [{"text": "----------------------------------------","color": "green"}]

# 武器確認

  ## レア

    ### ビッグフォーク
      execute if data entity @s Item.tag{taratara_gacha_401:1} run function suiryu_taratara_401:gacha/weapon/rare/bigfork

    ### 進撃のタライデント
      execute if data entity @s Item.tag{taratara_gacha_401:2} run function suiryu_taratara_401:gacha/weapon/rare/singeki_taraident

    ### コッドキラー
      execute if data entity @s Item.tag{taratara_gacha_401:3} run function suiryu_taratara_401:gacha/weapon/rare/cod_killer

    ### コッドクロス
      execute if data entity @s Item.tag{taratara_gacha_401:4} run function suiryu_taratara_401:gacha/weapon/rare/cod_cross

    ### 進撃のタラスボウ
      execute if data entity @s Item.tag{taratara_gacha_401:5} run function suiryu_taratara_401:gacha/weapon/rare/singeki_tarasbow

    ### デストロイヤー
      execute if data entity @s Item.tag{taratara_gacha_401:6} run function suiryu_taratara_401:gacha/weapon/rare/destroyer

  ## スーパーレア

    ### スタートライデント
      execute if data entity @s Item.tag{taratara_gacha_401:7} run function suiryu_taratara_401:gacha/weapon/super_rare/star_trident

    ### オケアノス
      execute if data entity @s Item.tag{taratara_gacha_401:8} run function suiryu_taratara_401:gacha/weapon/super_rare/okeanos

    ### ロイヤルトライデント
      execute if data entity @s Item.tag{taratara_gacha_401:9} run function suiryu_taratara_401:gacha/weapon/super_rare/loyal_trident

    ### ポセイドン
      execute if data entity @s Item.tag{taratara_gacha_401:10} run function suiryu_taratara_401:gacha/weapon/super_rare/poseidon

    ### アーバレスト
      execute if data entity @s Item.tag{taratara_gacha_401:11} run function suiryu_taratara_401:gacha/weapon/super_rare/arbarest

    ### コンパウンドボウ
      execute if data entity @s Item.tag{taratara_gacha_401:12} run function suiryu_taratara_401:gacha/weapon/super_rare/compaund_bow

    ### フレイムフラワー
      execute if data entity @s Item.tag{taratara_gacha_401:13} run function suiryu_taratara_401:gacha/weapon/super_rare/flame_flower

    ### ストロングショット
      execute if data entity @s Item.tag{taratara_gacha_401:14} run function suiryu_taratara_401:gacha/weapon/super_rare/strong_shot

  ## レジェンド

    ### トリアイナ
      execute if data entity @s Item.tag{taratara_gacha_401:15} run function suiryu_taratara_401:gacha/weapon/legend/triaina

    ### トリシューラ
      execute if data entity @s Item.tag{taratara_gacha_401:16} run function suiryu_taratara_401:gacha/weapon/legend/trisura

    ### ブリューナク
      execute if data entity @s Item.tag{taratara_gacha_401:17} run function suiryu_taratara_401:gacha/weapon/legend/brunak

    ### 金色の三叉槍
      execute if data entity @s Item.tag{taratara_gacha_401:18} run function suiryu_taratara_401:gacha/weapon/legend/golden_trident

    ### トライクロス
      execute if data entity @s Item.tag{taratara_gacha_401:19} run function suiryu_taratara_401:gacha/weapon/legend/tricross

    ### スコルピウス
      execute if data entity @s Item.tag{taratara_gacha_401:20} run function suiryu_taratara_401:gacha/weapon/legend/scorpius

    ### ポリボロス
      execute if data entity @s Item.tag{taratara_gacha_401:21} run function suiryu_taratara_401:gacha/weapon/legend/poriboros

    ### ファントム
      execute if data entity @s Item.tag{taratara_gacha_401:22} run function suiryu_taratara_401:gacha/weapon/legend/phantom

  ## ドリーム

    ### ガウディウム
      execute if data entity @s Item.tag{taratara_gacha_401:23} run function suiryu_taratara_401:gacha/weapon/dream/gaudium

    ### フェスティーナ
      execute if data entity @s Item.tag{taratara_gacha_401:24} run function suiryu_taratara_401:gacha/weapon/dream/festina

    ### リームロード
      execute if data entity @s Item.tag{taratara_gacha_401:25} run function suiryu_taratara_401:gacha/weapon/dream/ream_load

    ### フォルティス
      execute if data entity @s Item.tag{taratara_gacha_401:26} run function suiryu_taratara_401:gacha/weapon/dream/fortis

# 看板更新

  ## トライデント
    function suiryu_taratara_401:weapons/select_trident_redisplay

  ## クロスボウ
    function suiryu_taratara_401:weapons/select_crossbow_redisplay

# データ書き込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #GachaPlayerID suiryu_taratara_401.trigger run data modify entity @s Item.tag.401 set from storage suiryu_taratara_401 PlayerData

# タグ削除
  data remove entity @s Item.tag.taratara_gacha_401

# NBT設定
  data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Pos:[3999.5d,51.1d,11.5d],Invulnerable:1b,PickupDelay:-32768s,Age:-32768s}

# スコアリセット
  scoreboard players reset #GachaPlayerID suiryu_taratara_401.trigger
