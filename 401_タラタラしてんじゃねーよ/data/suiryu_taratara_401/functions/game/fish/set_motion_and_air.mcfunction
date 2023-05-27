#> suiryu_taratara_401:game/fish/set_motion_and_air
#
# MotionとAirを設定する
#
# @within function suiryu_taratara_401:game/fish/cod_kill

# タグ消去
  tag @s remove suiryu_taratara_401.cod.not_set

# Motion変更

  ## Motion[0]

    ### 乱数取得
      execute store result score #- suiryu_taratara_401.trigger run data get entity @s UUID[0] 0.000000000001
      scoreboard players operation #- suiryu_taratara_401.trigger %= #20 num_000

    ### Motion[0]設定
      execute store result entity @s Motion[0] double 0.08 run scoreboard players remove #- suiryu_taratara_401.trigger 10

  ## Motion[1]

    ### 乱数取得
      execute store result score #- suiryu_taratara_401.trigger run data get entity @s UUID[1] 0.000000000001
      scoreboard players operation #- suiryu_taratara_401.trigger %= #20 num_000

    ### Motion[1]設定
      execute store result entity @s Motion[1] double 0.08 run scoreboard players remove #- suiryu_taratara_401.trigger 10

  ## Motion[2]

    ### 乱数取得
      execute store result score #- suiryu_taratara_401.trigger run data get entity @s UUID[2] 0.000000000001
      scoreboard players operation #- suiryu_taratara_401.trigger %= #20 num_000

    ### Motion[2]設定
      execute store result entity @s Motion[2] double 0.08 run scoreboard players remove #- suiryu_taratara_401.trigger 10

# タラは窒息時間変更

  ## 乱数取得
    execute if entity @s[tag=suiryu_taratara_401.cod] store result score #- suiryu_taratara_401.trigger run data get entity @s UUID[3] 0.000000000003

  ## 窒息時間計算
    execute if entity @s[tag=suiryu_taratara_401.cod] run scoreboard players operation #- suiryu_taratara_401.trigger %= #100 num_000

  ## 窒息時間設定
    execute if entity @s[tag=suiryu_taratara_401.cod] store result entity @s Air short 1 run scoreboard players operation #- suiryu_taratara_401.trigger += #CodChokingDelay suiryu_taratara_401.trigger
