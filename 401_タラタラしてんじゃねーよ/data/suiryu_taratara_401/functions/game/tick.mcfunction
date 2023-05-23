#> suiryu_taratara_401:game/tick
#
# ゲーム中常時実行
#
# @within
#   function suiryu_taratara_401:game/start/count_down/0
#   function suiryu_taratara_401:game/tick

# 落下したタラのAirを100減らす
  execute as @e[tag=suiryu_taratara_401.falling,predicate=suiryu_taratara_401:location/stage,predicate=suiryu_taratara_401:is_on_ground] run function suiryu_taratara_401:game/fish/cod_on_ground

# 魚を殺した場合

  ## タラ
    execute as @e[type=item,predicate=suiryu_taratara_401:location/stage,predicate=suiryu_taratara_401:fishes/cod] at @s run function suiryu_taratara_401:game/fish/cod_kill

  ## サケ
    execute as @e[type=item,predicate=suiryu_taratara_401:location/stage,predicate=suiryu_taratara_401:fishes/salmon] at @s run function suiryu_taratara_401:game/fish/salmon_kill

  ## 熱帯魚
    execute as @e[type=item,predicate=suiryu_taratara_401:location/stage,predicate=suiryu_taratara_401:fishes/tropical_fish] at @s run function suiryu_taratara_401:game/fish/tropical_fish_kill

  ## フグ
    execute as @e[type=item,predicate=suiryu_taratara_401:location/stage,predicate=suiryu_taratara_401:fishes/pufferfish] at @s run function suiryu_taratara_401:game/fish/pufferfish_kill

  ## イカ
    execute as @e[type=item,predicate=suiryu_taratara_401:location/stage,predicate=suiryu_taratara_401:fishes/squid] at @s run function suiryu_taratara_401:game/fish/squid_kill

# イカの近くのプレイヤーに盲目付与
  execute as @e[tag=suiryu_taratara_401.squid,predicate=suiryu_taratara_401:location/stage] at @s as @a[distance=..1.5] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger run effect give @s blindness 4 99

# FEVER中
  execute if score #inFever suiryu_taratara_401.trigger matches 1 run function suiryu_taratara_401:game/fever/tick

# bossbarが見える範囲を設定する
  bossbar set taratara_fever_401 players @a[predicate=suiryu_taratara_401:location/stage_and_audience]

# プレイヤー以外の人がステージに入ったらロビーへ
  execute as @a[predicate=suiryu_taratara_401:location/stage] unless score @s id_000 = #PlayingID suiryu_taratara_401.trigger run tp @s 3999.50 50.00 4.50 0 0

# プレイヤー確認

  ## スコアセット
    scoreboard players set #PlayerCheck suiryu_taratara_401.trigger 0

  ## プレイヤー確認
    execute as @a[predicate=suiryu_taratara_401:location/stage] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger at @s run function suiryu_taratara_401:game/player_tick

  ## プレイヤーが居れば再帰
    execute if score #PlayerCheck suiryu_taratara_401.trigger matches 1 run schedule function suiryu_taratara_401:game/tick 1t

  ## プレイヤーが居なければ強制終了
    execute if score #PlayerCheck suiryu_taratara_401.trigger matches 0 run function suiryu_taratara_401:game/finish

# スコアは最大999999999
  execute if score #Score suiryu_taratara_401.trigger matches 1000000000.. run scoreboard players set #Score suiryu_taratara_401.trigger 999999999

# スコア表示
  title @a[predicate=suiryu_taratara_401:location/stage_and_audience] actionbar [{"text": "SCORE ","color": "green","bold": true},{"score":{"name": "#Score","objective": "suiryu_taratara_401.trigger"},"color": "gold"}]

# タラ確認

  ## スコアセット
    scoreboard players set #CodCheck suiryu_taratara_401.trigger 0

  ## タラは壁で反射する
    execute as @e[tag=suiryu_taratara_401.cod,predicate=suiryu_taratara_401:location/stage] at @s run function suiryu_taratara_401:game/fish/cod_bound

  ## タラが居なければゲーム終了
    execute if score #CodCheck suiryu_taratara_401.trigger matches 0 unless entity @e[tag=suiryu_taratara_401.cod,predicate=suiryu_taratara_401:location/stage] as @a[predicate=suiryu_taratara_401:location/stage] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger run function suiryu_taratara_401:game/game_over
