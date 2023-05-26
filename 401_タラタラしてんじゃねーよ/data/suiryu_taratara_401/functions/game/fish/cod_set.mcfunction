#> suiryu_taratara_401:game/fish/cod_set
#
# タラを設定する
#
# @within function suiryu_taratara_401:game/fish/cod_fall

# タグ消去
  tag @s remove suiryu_taratara_401.cod.not_set

# Motionをランダムに変更する

  ## 乱数取得
    execute store result score #- suiryu_taratara_401.trigger run data get entity @s UUID[0] 0.000000000001

  ## Motion変更
    execute store result entity @s Motion[1] double -0.1 run scoreboard players operation #- suiryu_taratara_401.trigger %= #10 num_000

# 窒息時間変更

  ## 乱数取得
    execute store result score #- suiryu_taratara_401.trigger run data get entity @s UUID[1] 0.000000000001

  ## 窒息時間計算
    scoreboard players operation #- suiryu_taratara_401.trigger %= #100 num_000

  ## 窒息時間設定
    execute store result entity @s Air short 1 run scoreboard players operation #- suiryu_taratara_401.trigger += #CodChokingDelay suiryu_taratara_401.trigger
