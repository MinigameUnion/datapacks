#> suiryu_taratara_401:game/fish/cod_on_ground
#
# 落下したタラのAirを100減らす
#
# @within function suiryu_taratara_401:game/tick

# タグ消去
  tag @s remove suiryu_taratara_401.falling

# Airを100減らす

  ## 現在のAirを取得する
    execute store result score #- suiryu_taratara_401.trigger run data get entity @s Air

  ## Airが100以下なら100に設定する
    execute if score #- suiryu_taratara_401.trigger matches ..99 run scoreboard players set #- suiryu_taratara_401.trigger 100

  ## Airを設定する
    execute store result entity @s Air short 1 run scoreboard players remove #- suiryu_taratara_401.trigger 100
