#> suiryu_taratara_401:weapons/phantom
#
# ファントム
# 4秒に1度、矢を補充する
#
# @within
#   function suiryu_taratara_401:game/start/give_weapons/crossbow/11
#   function suiryu_taratara_401:weapons/phantom

# 海洋の矢補充
  execute as @a[predicate=suiryu_taratara_401:location/stage] if score @s id_000 = #PlayingID suiryu_taratara_401.trigger run give @s tipped_arrow{display: {Name: '{"text":"海洋の矢","color":"aqua","bold":true,"italic":false}'}, HideFlags: 32, CustomPotionEffects: [{Id: 6, Amplifier: 99b, Duration: 20, ShowParticles: 0b}], CustomPotionColor: 58879} 1

# 4秒に1度、矢を補充する
  schedule function suiryu_taratara_401:weapons/phantom 4s
