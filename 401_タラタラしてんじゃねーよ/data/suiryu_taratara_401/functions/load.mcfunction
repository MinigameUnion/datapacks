#> suiryu_taratara_401:load
#
# ロード時実行
#
# @within tag/function minecraft:load

# 3年前の自分を消去するための処理
# 一回実行すれば消してok
  execute if score #6000_401 tara_score1_401 matches 6000 run function suiryu_taratara_401:good_bye

# scoreboard

  ## トリガー
    scoreboard objectives add suiryu_taratara_401.trigger trigger

# bossbar
  bossbar add taratara_fever_401 [{"text":"F","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"V","color":"gray","bold":true},{"text":"E","color":"gray","bold":true},{"text":"R","color":"gray","bold":true}]
  bossbar set taratara_fever_401 max 600
