#> suiryu_taratara_401:weapons/flame_flower
#
# フレイムフラワー
# 10秒に1度、花火を補充する
#
# @within
#   function suiryu_taratara_401:game/start/give_weapons/crossbow/6
#   function suiryu_taratara_401:weapons/flame_flower

# 花火補充
  execute as @a[predicate=suiryu_taratara_401:location/stage] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger run give @s firework_rocket{Fireworks: {Explosions: [{Type: 2, Flicker: 1b, Trail: 1b, Colors: [I; 5570536], FadeColors: [I; 16774912]}]}} 1

# 10s後に花火補充
  schedule function suiryu_taratara_401:weapons/flame_flower 10s
