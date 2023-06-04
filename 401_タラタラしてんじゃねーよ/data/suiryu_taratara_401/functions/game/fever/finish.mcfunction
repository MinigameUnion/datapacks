#> suiryu_taratara_401:game/fever/finish
#
# FEVER終了
#
# @within function suiryu_taratara_401:game/fever/tick

# FEVERゲージリセット
  scoreboard players set #FeverGauge suiryu_taratara_401.trigger 0

# FEVERフラグ設定
  scoreboard players set #inFever suiryu_taratara_401.trigger 0

# FEVERゲージの色を戻す
  bossbar set taratara_fever_401 color white

# FEVERゲージの名前を戻す
  bossbar set taratara_fever_401 name [{"text":"F","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"V","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"R","color":"gray","bold":true}]
