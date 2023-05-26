#> suiryu_taratara_401:game/fish/squid_kill
#
# イカを殺した場合
#
# @within function suiryu_taratara_401:game/tick

# スコア半減
  scoreboard players operation #Score suiryu_taratara_401.trigger /= #ScoreRemoveSquid suiryu_taratara_401.trigger

# サウンド
  playsound minecraft:entity.squid.death master @a ~ ~ ~ 2 0

# パーティクル
  particle minecraft:squid_ink ~ ~ ~ 1 1 1 0 10

# 盲目
  execute as @a[predicate=suiryu_taratara_401:location/stage] if score @s suiryu_taratara_401.trigger = #PlayingID suiryu_taratara_401.trigger run effect give @s blindness 10 99

# 消去
  kill @s
