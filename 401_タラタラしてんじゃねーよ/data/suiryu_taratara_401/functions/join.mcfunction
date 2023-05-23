#> suiryu_taratara_401:join
#
# ゲーム参加
#
# @within lobby_000:click

# プレイ中のゲームIDを設定する
  scoreboard players set @s playing_000 401

# ゲーム入室時の処理
  function player_000:join_game

# ゲームロビーにtp
  tp @s 3999.50 50.00 4.50 0 0

# プレイヤーID取得
  scoreboard players operation #PlayerID suiryu_taratara_401.trigger = @s id_000

# データ読み込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify storage suiryu_taratara_401 PlayerData set from entity @s Item.tag.401

# イベント

  ## プレイヤー毎

    ### リリース記念キャンペーン
    ### 2023/05から次期アップデートまで
      execute unless data storage suiryu_taratara_401 PlayerData.Event.Campaign.2023{release_campaign:1} run function suiryu_taratara_401:event/special/2023/release_campaign

  ## ワールド共通

    ### 第1回コッドフェス
    ### 2023/05から18日間
      execute unless data storage suiryu_taratara_401 CodFes.1{finish:1} run function suiryu_taratara_401:event/cod_fes/001/notification

# データ書き込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify entity @s Item.tag.401 set from storage suiryu_taratara_401 PlayerData

# スコアリセット
  scoreboard players reset #PlayerID suiryu_taratara_401.trigger

# ストレージリセット
  data remove storage suiryu_taratara_401 PlayerData

# 満腹度制御
  scoreboard players set @s food_000 20
