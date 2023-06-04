#> suiryu_taratara_401:game/fever/start
#
# FEVER開始
#
# @within
#   function suiryu_taratara_401:game/fish/cod_kill
#   function suiryu_taratara_401:game/player_tick

# FEVERゲージ設定
  scoreboard players set #FeverGauge suiryu_taratara_401.trigger 600

# FEVERフラグ設定
  scoreboard players set #inFever suiryu_taratara_401.trigger 1

# FEVERゲージ色変えタイマー設定
  scoreboard players set #FeverColorTimer suiryu_taratara_401.trigger 0
