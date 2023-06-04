#> suiryu_taratara_401:load
#
# ロード時実行
#
# @within tag/function minecraft:load

# scoreboard

  ## トリガー
    scoreboard objectives add suiryu_taratara_401.trigger trigger

# bossbar
  bossbar add taratara_fever_401 [{"text":"F","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"V","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"R","color":"gray","bold":true}]
  bossbar set taratara_fever_401 max 600
