#> suiryu_taratara_401:game/fish/tropical_fish_set_variant
#
# 熱帯魚の柄を設定する
#
# @within function suiryu_taratara_401:game/fish/others_summon

# タグ消去
  tag @s remove suiryu_taratara_401.tropical_fish.not_set

# 乱数取得
  scoreboard players set #RANGE num_000 252642562
  function tool_000:random

# 柄設定
  execute store result entity @s Variant int 1 run scoreboard players get #RANDOM num_000
