#> suiryu_taratara_401:game/fish/cod_bound
#
# タラが壁で反射する
#
# @within function suiryu_taratara_401:game/tick

# スコアセット
  scoreboard players set #CodCheck suiryu_taratara_401.trigger 1

# 壁で反射する
  execute unless block ~1 ~ ~ #suiryu_taratara_401:airs store result entity @s Motion[0] double -0.01 run data get entity @s Pos[1]
  execute unless block ~-1 ~ ~ #suiryu_taratara_401:airs store result entity @s Motion[0] double 0.01 run data get entity @s Pos[1]
  execute unless block ~ ~ ~1 #suiryu_taratara_401:airs store result entity @s Motion[2] double -0.01 run data get entity @s Pos[1]
  execute unless block ~ ~ ~-1 #suiryu_taratara_401:airs store result entity @s Motion[2] double 0.01 run data get entity @s Pos[1]
