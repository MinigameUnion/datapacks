#> suiryu_taratara_401:game/fish/salmon_kill
#
# サケを殺した場合
#
# @within function suiryu_taratara_401:game/tick

# スコア減少
  scoreboard players operation #Score suiryu_taratara_401.trigger -= #ScoreRemoveSalmon suiryu_taratara_401.trigger

# スコアは0以上
  execute if score #Score suiryu_taratara_401.trigger matches ..-1 run scoreboard players set #Score suiryu_taratara_401.trigger 0

# サウンド
  playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 2 2

# パーティクル
  particle minecraft:angry_villager ~ ~ ~ 0 0 0 1 1

# 消去
  kill @s
