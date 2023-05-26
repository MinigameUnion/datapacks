#> suiryu_taratara_401:game/game_over
#
# ゲーム終了
#
# @within function suiryu_taratara_401:game/tick

# 再帰終了
  schedule clear suiryu_taratara_401:game/tick
  schedule clear suiryu_taratara_401:game/bonus_item/fall
  schedule clear suiryu_taratara_401:weapons/flame_flower
  schedule clear suiryu_taratara_401:weapons/phantom

# 終了
  schedule function suiryu_taratara_401:game/finish 3s

# 経験値・矢・トライデント・アイテム・魚消去
  kill @e[type=#suiryu_taratara_401:first_killed,predicate=suiryu_taratara_401:location/stage]

# アイテム消去
  clear @s

# プレイヤーID取得
  scoreboard players operation #PlayerID suiryu_taratara_401.trigger = @s id_000

# データ読み込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify storage suiryu_taratara_401 PlayerData set from entity @s Item.tag.401

# スコア計算

  ## 100で割る
    scoreboard players operation #Score suiryu_taratara_401.trigger /= #100 num_000

  ## スコア倍率を掛ける
    scoreboard players operation #Score suiryu_taratara_401.trigger *= #ScoreRate suiryu_taratara_401.trigger

  ## スコアは最大999999999
    execute if score #Score suiryu_taratara_401.trigger matches 1000000000.. run scoreboard players set #Score suiryu_taratara_401.trigger 999999999

# タイトル

  ## タイトルリセット
    title @a[predicate=suiryu_taratara_401:location/stage_and_audience] reset

  ## タイトル設定
    title @a[predicate=suiryu_taratara_401:location/stage_and_audience] times 5 100 5
    title @a[predicate=suiryu_taratara_401:location/stage_and_audience] title {"text":"タラタラしてんじゃねーよ！","color":"dark_red","bold":true}

  ## スコア通知

    ### ハイスコアではない場合
      execute if score #BestRecord suiryu_taratara_401.trigger >= #Score suiryu_taratara_401.trigger run title @a[predicate=suiryu_taratara_401:location/stage_and_audience] subtitle [{"text":"SCORE ","color":"green","bold":true},{"score":{"name":"#Score","objective":"suiryu_taratara_401.trigger"},"color":"gold"}]

    ### ハイスコアの場合
      execute if score #BestRecord suiryu_taratara_401.trigger < #Score suiryu_taratara_401.trigger run title @a[predicate=suiryu_taratara_401:location/stage_and_audience] subtitle [{"text":"HIGHEST SCORE ","color":"yellow","bold":true},{"score":{"name":"#Score","objective":"suiryu_taratara_401.trigger"},"color":"gold"}]

# アクションバー消去
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] actionbar ""

# ハイスコア更新
  execute if score #BestRecord suiryu_taratara_401.trigger < #Score suiryu_taratara_401.trigger run function suiryu_taratara_401:game/high_score_record

# スコア通知

  ## 自己ベスト取得
    execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.BestRecord

  ## 自己ベスト更新
    execute if score #- suiryu_taratara_401.trigger < #Score suiryu_taratara_401.trigger store result storage suiryu_taratara_401 PlayerData.BestRecord int 1 run scoreboard players operation #- suiryu_taratara_401.trigger = #Score suiryu_taratara_401.trigger

  ## バー
    tellraw @s {"text":"----------------------------------------","color":"green"}

  ## 今回のスコア通知
    tellraw @s ["",{"text":"  今回のスコア ","color":"yellow"},{"score":{"name":"#Score","objective":"suiryu_taratara_401.trigger"},"color":"gold","italic":false}]

  ## 自己ベスト通知
    tellraw @a ["",{"text":"  ("},{"text":"自己ベスト"},{"text":" "},{"score":{"name":"#-","objective":"suiryu_taratara_401.trigger"},"italic":false},{"text":")"}]

# ミニ加算

  ## スコアを6000で割る
    scoreboard players operation #Score suiryu_taratara_401.trigger /= #6000 num_000

  ## 獲得ミニ倍率
    scoreboard players operation #Score suiryu_taratara_401.trigger *= #miniRate suiryu_taratara_401.trigger

  ## ミニ加算
    scoreboard players operation @s add_coin_000 = #Score suiryu_taratara_401.trigger

# bossbar消去
  bossbar set taratara_fever_401 visible false

# データ書き込み
  execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #PlayerID suiryu_taratara_401.trigger run data modify entity @s Item.tag.401 set from storage suiryu_taratara_401 PlayerData

# スコアリセット
  scoreboard players reset #PlayerID suiryu_taratara_401.trigger

# ストレージリセット
  data remove storage suiryu_taratara_401 PlayerData

# サウンド
  execute as @a[predicate=suiryu_taratara_401:location/stage_and_audience] at @s run playsound minecraft:entity.evoker.prepare_wololo master @s ~ ~ ~ 1 1
